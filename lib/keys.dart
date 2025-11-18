// region Welcome Screen
const welcomeButtonLoginKey = 'welcome_button_login';
const welcomeButtonRegisterKey = 'welcome_button_register';
// endregion

// region Login Screen
const loginInputEmailKey = 'login_input_email';
const loginInputPasswordKey = 'login_input_password';
const loginButtonLoginKey = 'login_button_login';
const loginButtonRegisterKey = 'login_button_register';
const loginSnackbarErrorKey = 'login_snackbar_error';
// endregion

// region New List Dialog
const sendListInputEmailKey = 'new_list_input_title';
const sendListInputMessageKey = 'new_list_input_reward';
const newListButtonCreateKey = 'new_list_button_create';
const newListButtonCancelKey = 'new_list_button_cancel';
// endregion

// region Lists Screen
const listsListTileListKey = 'lists_list_tile_list_'; // index will be added to the end
const listsButtonDeleteKey = 'lists_button_delete_'; // index will be added to the end
const listsSnackbarDeleteErrorKey = 'lists_snackbar_delete_error';
// endregion

// region Delete List Dialog
const deleteListButtonDeleteKey = 'delete_list_button_delete';
const deleteListButtonCancelKey = 'delete_list_button_cancel';
// endregion

// region Delete Log Dialog
const deleteLogCheckboxReindexKey = 'delete_log_checkbox_reindex';
const deleteLogButtonDeleteKey = 'delete_log_button_delete';
const deleteLogButtonCancelKey = 'delete_log_button_cancel';
// endregion

// region Danger Dialog
const dangerDialogButtonSubmitKey = 'danger_dialog_button_submit';
const dangerDialogButtonCancelKey = 'danger_dialog_button_cancel';
// endregion

// region Edit Log Dialog
const editLogSelectWoodTypeKey = 'edit_log_select_wood_type';
const editLogDropdownWoodTypeOptionKey = 'edit_log_dropdown_wood_type_option_'; // index will be added to the end
const editLogSelectCalculationModeKey = 'edit_log_select_calculation_mode';
const editLogDropdownCalculationModeOptionKey = 'edit_log_dropdown_calculation_mode_option_'; // index will be added to the end
const editLogSelectQualityKey = 'edit_log_select_quality';
const editLogDropdownQualityOptionKey = 'edit_log_dropdown_quality_option_'; // index will be added to the end
const editLogInputLengthKey = 'edit_log_input_length';
const editLogInputDiameterKey = 'edit_log_input_diameter';
const editLogInputJprlKey = 'edit_log_input_jprl';
const editLogInputNumberKey = 'edit_log_input_number';
const editLogButtonSubmitKey = 'edit_log_button_submit';
const editLogButtonCancelKey = 'edit_log_button_cancel';
const editLogTextVolumeKey = 'edit_log_text_volume';
const editLogCheckboxRhizomeKey = 'edit_log_checkbox_rhizome';
// endregion

// region Calculator Screen
const calculatorDropdownOptionKey = 'calculator_dropdown_option_'; // type and index will be added to the end

// region Bottom Bar
const calculatorBottomBarButtonNewKey = 'calculator_bottom_bar_button_new';
const calculatorBottomBarButtonListsKey = 'calculator_bottom_bar_button_lists';
const calculatorBottomBarButtonSendKey = 'calculator_bottom_bar_button_send';
const calculatorBottomBarButtonReportsKey = 'calculator_bottom_bar_button_reports';
// endregion

// region Summary Bar
const calculatorSummaryBarTextTitleKey = 'summary_bar_text_title';
const calculatorSummaryBarTextAmountsKey = 'summary_bar_text_amounts';
// endregion

// region Tabs
const calculatorTabsTabRawsKey = 'calculator_tab_raws';
const calculatorTabsTabInputKey = 'calculator_tab_input';
const calculatorTabsTabLogsKey = 'calculator_tab_logs';
const calculatorTabsTabSummaryKey = 'calculator_tab_summary';
// endregion

// region Menu
const calculatorMenuButtonFeedbackKey = 'calculator_menu_button_feedback';
const calculatorMenuButtonStatsKey = 'calculator_menu_button_stats';
const calculatorMenuButtonMenuKey = 'calculator_menu_button_menu';
const calculatorMenuButtonWebKey = 'calculator_menu_button_web';
const calculatorMenuButtonFacebookKey = 'calculator_menu_button_facebook';
const calculatorMenuButtonLogoutKey = 'calculator_menu_button_logout';
// endregion

// region Fragments

// region Input Fragment
const calculatorInputFragmentInputLengthKey = 'calculator_input_fragment_input_length';
const calculatorInputFragmentInputDiameterKey = 'calculator_input_fragment_input_diameter';
const calculatorInputFragmentInputJprlKey = 'calculator_input_fragment_input_jprl';
const calculatorInputFragmentInputNumberKey = 'calculator_input_fragment_input_number';

const calculatorInputFragmentSelectWoodTypeKey = 'calculator_input_fragment_select_wood_type';
const calculatorInputFragmentButtonLengthKey = 'calculator_input_fragment_button_length';
const calculatorInputFragmentButtonDiameterKey = 'calculator_input_fragment_button_diameter';
const calculatorInputFragmentSelectQualityKey = 'calculator_input_fragment_select_quality';
const calculatorInputFragmentSelectModeKey = 'calculator_input_fragment_select_mode';
const calculatorInputFragmentButtonPlusKey = 'calculator_input_fragment_button_plus';
const calculatorInputFragmentCheckboxRhizomeKey = 'calculator_input_fragment_checkbox_rhizome';
const calculatorInputFragmentButtonClearKey = 'calculator_input_fragment_button_clear';
const calculatorInputFragmentButtonNumberKey = 'calculator_input_fragment_button_number_'; // specific number (or dot) will be added to the end

const calculatorInputFragmentTextVolumeKey = 'calculator_input_fragment_text_volume';
// endregion

// region Summary Fragment
const calculatorSummaryFragmentTextLogsCountKey = 'calculator_summary_fragment_text_logs_count';
const calculatorSummaryFragmentTextLogsRzsCountKey = 'calculator_summary_fragment_text_logs_rzs_count';
const calculatorSummaryFragmentTextLogsVolumeKey = 'calculator_summary_fragment_text_logs_volume';

const calculatorSummaryFragmentTextRawsCountKey = 'calculator_summary_fragment_text_raws_count';
const calculatorSummaryFragmentTextRawsRzsCountKey = 'calculator_summary_fragment_text_raws_rzs_count';
const calculatorSummaryFragmentTextRawsVolumeKey = 'calculator_summary_fragment_text_raws_volume';

const calculatorSummaryFragmentTextTotalCountKey = 'calculator_summary_fragment_text_total_count';
const calculatorSummaryFragmentTextTotalRzsCountKey = 'calculator_summary_fragment_text_total_rzs_count';
const calculatorSummaryFragmentTextTotalVolumeKey = 'calculator_summary_fragment_text_total_volume';
const calculatorSummaryFragmentTextTotalAverageVolumeKey = 'calculator_summary_fragment_text_total_average_volume';
const calculatorSummaryFragmentTextTotalAverageVolumePerTreeKey = 'calculator_summary_fragment_text_total_average_volume_per_tree';
// endregion

// region Raws Fragment
const calculatorRawsFragmentTextSectionDescription1Key = 'calculator_raws_fragment_text_section_description_1';
const calculatorRawsFragmentTileRawKey = 'calculator_raws_fragment_tile_raw_'; // index will be added to the end

const calculatorRawsFragmentTileRawRhizomeSuffix = '_rz_text';
const calculatorRawsFragmentTileRawDeleteSuffix = '_delete_button';

const calculatorRawsFragmentButtonBatchDeleteKey = 'calculator_raws_fragment_button_batch_delete';
const calculatorRawsFragmentButtonBatchDeleteCancelKey = 'calculator_raws_fragment_button_batch_delete_cancel';
// endregion

// region Logs Fragment
const calculatorLogsFragmentTileLogKey = 'calculator_logs_fragment_tile_log_'; // index will be added to the end
const calculatorLogsFragmentTileLogVolumeSuffix = '_volume_text';
const calculatorLogsFragmentTileLogParamsSuffix = '_params_text';
const calculatorLogsFragmentTileLogNumberSuffix = '_number_text';

const calculatorLogsFragmentTileLogDeleteSuffix = '_delete_button';
// endregion

// endregion
