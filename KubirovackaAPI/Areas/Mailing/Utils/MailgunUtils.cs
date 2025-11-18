using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using FluentEmail.Core;
using FluentEmail.Core.Models;
using KubirovackaAPI.Areas.Mailing.Models;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.DbContexts;
using KubirovackaAPI.Utilities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using NPOI.SS.Formula.Functions;

namespace KubirovackaAPI.Areas.Mailing.Utils
{
    public class MailgunUtils : IMailgunUtils
    {
        private readonly IConfiguration _config;
        private readonly IFluentEmailFactory _emailFactory;
        private readonly KubirovackaContext _context;
        private readonly IHashUtils _hasher;

        public MailgunUtils(IConfiguration config, IFluentEmailFactory emailFactory, KubirovackaContext context,
            IHashUtils hasher)
        {
            _config = config;
            _emailFactory = emailFactory;
            _context = context;
            _hasher = hasher;
        }
        public async Task<bool> SendMail(MailingDTO dto)
        {
            switch (dto.TargetType)
            {
                case MailingTargetType.SpecificAddresses:
                    var addresses = dto.Emails.Split(',');
                    foreach (var address in addresses)
                    {
                        var user = await _context.Users
                            .Include(u => u.LicensesUsed)
                            .FirstOrDefaultAsync(u => u.Email == address);
                        string replacedBody;
                        if (user == null)
                        {
                            replacedBody = dto.Body;
                        }
                        else
                        {
                            ReplaceVariables(dto.Body, user, out replacedBody);
                        }
                        try
                        {
                            await _emailFactory.Create()
                                .To(address)
                                .SetFrom(_config["EmailSettingsNoreplyMailgun:Sender"],
                                    _config["EmailSettingsNoreplyMailgun:SenderName"])
                                .Subject(dto.Subject)
                                .Body(replacedBody, dto.IsHtml)
                                .SendAsync();
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine("Chyba pri odesilani mailu na " + address);
                            Console.WriteLine(e);
                        }
                    }
                    return true;
                case MailingTargetType.EveryConfirmedAddress:
                    var users = await _context.Users.Where(u => u.Confirmed)
                        .Include(u => u.LicensesUsed)
                        .ToListAsync();

                    foreach (var user in users)
                    {
                        try
                        {
                            ReplaceVariables(dto.Body, user, out var newBody);
                            await _emailFactory.Create()
                                .To(user.Email)
                                .SetFrom(_config["EmailSettingsNoreplyMailgun:Sender"],
                                    _config["EmailSettingsNoreplyMailgun:SenderName"])
                                .Subject(dto.Subject)
                                .Body(newBody, dto.IsHtml)
                                .SendAsync();
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine("Chyba pri odesilani mailu na " + user.Email);
                            Console.WriteLine(e);
                        }
                    }
                    return true;
                case MailingTargetType.EveryUnconfirmedAddress:
                    var unconfirmedUsers = await _context.Users.Where(u => !u.Confirmed)
                        .Include(u => u.LicensesUsed).ToListAsync();

                    foreach (var user in unconfirmedUsers)
                    {
                        try
                        {
                            ReplaceVariables(dto.Body, user, out var newBody);
                            await _emailFactory.Create()
                                .To(user.Email)
                                .SetFrom(_config["EmailSettingsNoreplyMailgun:Sender"],
                                    _config["EmailSettingsNoreplyMailgun:SenderName"])
                                .Subject(dto.Subject)
                                .Body(newBody, dto.IsHtml)
                                .SendAsync();
                        } catch (Exception e)
                        {
                            Console.WriteLine("Chyba pri odesilani mailu na " + user.Email);
                            Console.WriteLine(e);
                        }
                    }
                    return true;
                case MailingTargetType.PremiumUsers:
                    var premiumUsers = await _context.Licenses.Where(l => l.ExpirationDate >= DateTime.UtcNow)
                        .Include(l => l.User).ToListAsync();
                    
                    foreach (var license in premiumUsers)
                    {
                        try
                        {
                            ReplaceVariables(dto.Body, license.User, out var newBody);
                            await _emailFactory.Create()
                                .To(license.User.Email)
                                .SetFrom(_config["EmailSettingsNoreplyMailgun:Sender"],
                                    _config["EmailSettingsNoreplyMailgun:SenderName"])
                                .Subject(dto.Subject)
                                .Body(newBody, dto.IsHtml)
                                .SendAsync();
                        } catch (Exception e)
                        {
                            Console.WriteLine("Chyba pri odesilani mailu pro licenci " + license.Id);
                            Console.WriteLine(e);
                        }
                    }

                    return true;
                case MailingTargetType.NonPremiumUsers:
                    var nonPremiumUsers = await _context.Licenses
                        .Where(l => l.ExpirationDate < DateTime.UtcNow)
                        .Include(l => l.User)
                        .Where(l => l.User.Confirmed).ToListAsync();
                    
                    foreach (var license in nonPremiumUsers)
                    {
                        try
                        {
                            ReplaceVariables(dto.Body, license.User, out var newBody);
                            await _emailFactory.Create()
                                .To(license.User.Email)
                                .SetFrom(_config["EmailSettingsNoreplyMailgun:Sender"],
                                    _config["EmailSettingsNoreplyMailgun:SenderName"])
                                .Subject(dto.Subject)
                                .Body(newBody, dto.IsHtml)
                                .SendAsync();
                        } catch (Exception e)
                        {
                            Console.WriteLine("Chyba pri odesilani mailu pro licenci " + license.Id);
                            Console.WriteLine(e);
                        }
                    }
                    return true;
                case MailingTargetType.ActiveUsers:
                    break;
                case MailingTargetType.InactiveUsers:
                    break;
                case MailingTargetType.Advertisers:
                    var advertisers = await _context.UserGroups.Where(ug => ug.Group.IsAdvertiser)
                        .Where(ug => ug.IsSubAccount == false)
                        .Include(ug => ug.User)
                        .ThenInclude(u => u.LicensesUsed)
                        .ToListAsync();
                    foreach (var advertiser in advertisers)
                    {
                        try
                        {
                            ReplaceVariables(dto.Body, advertiser.User, out var newBody);
                            await _emailFactory.Create()
                                .To(advertiser.User.Email)
                                .SetFrom(_config["EmailSettingsNoreplyMailgun:Sender"],
                                    _config["EmailSettingsNoreplyMailgun:SenderName"])
                                .Subject(dto.Subject)
                                .Body(newBody, dto.IsHtml)
                                .SendAsync();
                        } catch (Exception e)
                        {
                            Console.WriteLine("Chyba pri odesilani mailu na " + advertiser.User.Email);
                            Console.WriteLine(e);
                        }
                    }
                    return true;
            }

            return false;
        }

        private void ReplaceVariables(string text, User u, out string newBody)
        {
            newBody = text.Replace("$FIRST_NAME$", u.FirstName)
                .Replace("$LAST_NAME$", u.LastName)
                .Replace("$EMAIL$", u.Email)
                .Replace("$CONFIRM_HASH$", WebUtility.UrlEncode(_hasher.GetEncryptedByKey(u.Email)))
                .Replace("$LICENSE_EXPIRATION_DATE$", 
                    u.LicensesUsed?.FirstOrDefault()?.ExpirationDate.ToString("d")
                                                      ?? DateTime.UtcNow.ToString("d"));
        }
    }
}