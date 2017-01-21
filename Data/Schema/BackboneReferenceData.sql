-------------------------------------------------------------------------------
-- Reference Data: Populates an empty Backbone schema with reference data
-------------------------------------------------------------------------------

-- [dbo].[tblVersion]
TRUNCATE TABLE [dbo].[tblVersion]
INSERT [dbo].[tblVersion] ([Version_ID], [Version_Number], [Version_Description]) VALUES (1, 13.0, '2017.01.06')
GO

-- [dbo].[tblUserProfileType]
INSERT [dbo].[tblUserProfileType] ([UserProfileType_ID], [UserProfileType_Name], [UserProfileType_DateCreated], [UserProfileType_DateModified]) VALUES (1, N'Decision Maker', GETDATE(), GETDATE())
INSERT [dbo].[tblUserProfileType] ([UserProfileType_ID], [UserProfileType_Name], [UserProfileType_DateCreated], [UserProfileType_DateModified]) VALUES (2, N'Customer Administrator', GETDATE(), GETDATE())
INSERT [dbo].[tblUserProfileType] ([UserProfileType_ID], [UserProfileType_Name], [UserProfileType_DateCreated], [UserProfileType_DateModified]) VALUES (3, N'Analyst', GETDATE(), GETDATE())
INSERT [dbo].[tblUserProfileType] ([UserProfileType_ID], [UserProfileType_Name], [UserProfileType_DateCreated], [UserProfileType_DateModified]) VALUES (4, N'Modeller', GETDATE(), GETDATE())
INSERT [dbo].[tblUserProfileType] ([UserProfileType_ID], [UserProfileType_Name], [UserProfileType_DateCreated], [UserProfileType_DateModified]) VALUES (5, N'Lanner Administrator', GETDATE(), GETDATE())
GO

-- [dbo].[tblUserProfile]
INSERT [dbo].[tblUserProfile] (
	[UserProfile_UserProfileTypeID], 
	[UserProfile_FirstName], 
	[UserProfile_LastName], 
	[UserProfile_DisplayName], 
	[UserProfile_EmailAddress], 
	[UserProfile_Telephone], 
	[UserProfile_Active], 
	[UserProfile_LastLogin], 
	[UserProfile_Username], 
	[UserProfile_Password], 
	[UserProfile_Salt], 
	[UserProfile_ReceiveEmailNotifications], 
	[UserProfile_DateCreated], 
	[UserProfile_DateModified]) 
VALUES (
	5, 
	N'', 
	N'Administrator', 
	N'Administrator', 
	N'admin@lanner.com', NULL, 1, NULL, 
	N'admin@lanner.com', '58CC5F4537BC2617352D39E93E6653A342A86CA5', '>npSp6i/0%.!+,RuI6N%#u&Yn9Bd;]{M>u^£eg]3TFO::uj/|}Uan|w&P9FX', 0, GETDATE(), GETDATE())
GO

-- [dbo].[tblScenarioStatus]
INSERT [dbo].[tblScenarioStatus] ([ScenarioStatus_ID], [ScenarioStatus_Name], [ScenarioStatus_DateCreated], [ScenarioStatus_DateModified]) VALUES (1, N'Draft', GETDATE(), GETDATE())
INSERT [dbo].[tblScenarioStatus] ([ScenarioStatus_ID], [ScenarioStatus_Name], [ScenarioStatus_DateCreated], [ScenarioStatus_DateModified]) VALUES (2, N'Running', GETDATE(), GETDATE())
INSERT [dbo].[tblScenarioStatus] ([ScenarioStatus_ID], [ScenarioStatus_Name], [ScenarioStatus_DateCreated], [ScenarioStatus_DateModified]) VALUES (3, N'Erroneous', GETDATE(), GETDATE())
INSERT [dbo].[tblScenarioStatus] ([ScenarioStatus_ID], [ScenarioStatus_Name], [ScenarioStatus_DateCreated], [ScenarioStatus_DateModified]) VALUES (4, N'Complete', GETDATE(), GETDATE())
GO

-- [dbo].[tblScenarioResultStatus]
INSERT [dbo].[tblScenarioResultStatus] ([ScenarioResultStatus_ID], [ScenarioResultStatus_Name], [ScenarioResultStatus_DateCreated], [ScenarioResultStatus_DateModified]) VALUES (0, N'Unknown', GETDATE(), GETDATE())
INSERT [dbo].[tblScenarioResultStatus] ([ScenarioResultStatus_ID], [ScenarioResultStatus_Name], [ScenarioResultStatus_DateCreated], [ScenarioResultStatus_DateModified]) VALUES (1, N'Red', GETDATE(), GETDATE())
INSERT [dbo].[tblScenarioResultStatus] ([ScenarioResultStatus_ID], [ScenarioResultStatus_Name], [ScenarioResultStatus_DateCreated], [ScenarioResultStatus_DateModified]) VALUES (2, N'Amber', GETDATE(), GETDATE())
INSERT [dbo].[tblScenarioResultStatus] ([ScenarioResultStatus_ID], [ScenarioResultStatus_Name], [ScenarioResultStatus_DateCreated], [ScenarioResultStatus_DateModified]) VALUES (3, N'Green', GETDATE(), GETDATE())
GO

-- [dbo].[tblPanelDisplayMethod]
INSERT [dbo].[tblPanelDisplayMethod] ([PanelDisplayMethod_ID], [PanelDisplayMethod_ApplicationTypeID], [PanelDisplayMethod_Name], [PanelDisplayMethod_Repeatable], [PanelDisplayMethod_Editable], [PanelDisplayMethod_Active], [PanelDisplayMethod_DateCreated], [PanelDisplayMethod_DateModified]) VALUES (1, 0, N'Input List', 0, 1, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblPanelDisplayMethod] ([PanelDisplayMethod_ID], [PanelDisplayMethod_ApplicationTypeID], [PanelDisplayMethod_Name], [PanelDisplayMethod_Repeatable], [PanelDisplayMethod_Editable], [PanelDisplayMethod_Active], [PanelDisplayMethod_DateCreated], [PanelDisplayMethod_DateModified]) VALUES (2, 0, N'Double Input List', 0, 1, 0, GETDATE(), GETDATE())
INSERT [dbo].[tblPanelDisplayMethod] ([PanelDisplayMethod_ID], [PanelDisplayMethod_ApplicationTypeID], [PanelDisplayMethod_Name], [PanelDisplayMethod_Repeatable], [PanelDisplayMethod_Editable], [PanelDisplayMethod_Active], [PanelDisplayMethod_DateCreated], [PanelDisplayMethod_DateModified]) VALUES (3, 0, N'Grid', 1, 1, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblPanelDisplayMethod] ([PanelDisplayMethod_ID], [PanelDisplayMethod_ApplicationTypeID], [PanelDisplayMethod_Name], [PanelDisplayMethod_Repeatable], [PanelDisplayMethod_Editable], [PanelDisplayMethod_Active], [PanelDisplayMethod_DateCreated], [PanelDisplayMethod_DateModified]) VALUES (4, 0, N'Inline Editor', 1, 1, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblPanelDisplayMethod] ([PanelDisplayMethod_ID], [PanelDisplayMethod_ApplicationTypeID], [PanelDisplayMethod_Name], [PanelDisplayMethod_Repeatable], [PanelDisplayMethod_Editable], [PanelDisplayMethod_Active], [PanelDisplayMethod_DateCreated], [PanelDisplayMethod_DateModified]) VALUES (5, 1, N'FLS Product Input', 1, 0, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblPanelDisplayMethod] ([PanelDisplayMethod_ID], [PanelDisplayMethod_ApplicationTypeID], [PanelDisplayMethod_Name], [PanelDisplayMethod_Repeatable], [PanelDisplayMethod_Editable], [PanelDisplayMethod_Active], [PanelDisplayMethod_DateCreated], [PanelDisplayMethod_DateModified]) VALUES (6, 1, N'FLS Connectivity Input', 0, 0, 1, GETDATE(), GETDATE())
GO

-- [dbo].[tblNotificationStatus]
INSERT [dbo].[tblNotificationStatus] ([NotificationStatus_ID], [NotificationStatus_Name], [NotificationStatus_DateCreated], [NotificationStatus_DateModified]) VALUES (1, N'Open', GETDATE(), GETDATE())
INSERT [dbo].[tblNotificationStatus] ([NotificationStatus_ID], [NotificationStatus_Name], [NotificationStatus_DateCreated], [NotificationStatus_DateModified]) VALUES (2, N'With Customer', GETDATE(), GETDATE())
INSERT [dbo].[tblNotificationStatus] ([NotificationStatus_ID], [NotificationStatus_Name], [NotificationStatus_DateCreated], [NotificationStatus_DateModified]) VALUES (3, N'Resolved', GETDATE(), GETDATE())
GO

-- [dbo].[tblNotificationType]
INSERT [dbo].[tblNotificationType] ([NotificationType_ID], [NotificationType_Name], [NotificationType_DateCreated], [NotificationType_DateModified]) VALUES (1, N'System Notification', GETDATE(), GETDATE())
INSERT [dbo].[tblNotificationType] ([NotificationType_ID], [NotificationType_Name], [NotificationType_DateCreated], [NotificationType_DateModified]) VALUES (2, N'Message', GETDATE(), GETDATE())
INSERT [dbo].[tblNotificationType] ([NotificationType_ID], [NotificationType_Name], [NotificationType_DateCreated], [NotificationType_DateModified]) VALUES (3, N'Comment', GETDATE(), GETDATE())
INSERT [dbo].[tblNotificationType] ([NotificationType_ID], [NotificationType_Name], [NotificationType_DateCreated], [NotificationType_DateModified]) VALUES (4, N'Support Ticket', GETDATE(), GETDATE())
GO

-- [dbo].[tblNotificationPriority]
INSERT [dbo].[tblNotificationPriority] ([NotificationPriority_ID], [NotificationPriority_Name], [NotificationPriority_DateCreated], [NotificationPriority_DateModified]) VALUES (1, N'Low', GETDATE(), GETDATE())
INSERT [dbo].[tblNotificationPriority] ([NotificationPriority_ID], [NotificationPriority_Name], [NotificationPriority_DateCreated], [NotificationPriority_DateModified]) VALUES (2, N'Medium', GETDATE(), GETDATE())
INSERT [dbo].[tblNotificationPriority] ([NotificationPriority_ID], [NotificationPriority_Name], [NotificationPriority_DateCreated], [NotificationPriority_DateModified]) VALUES (3, N'High', GETDATE(), GETDATE())
GO

-- [dbo].[tblConfiguration]
INSERT [dbo].[tblConfiguration] ([Configuration_ID], [Configuration_CustomerName], [Configuration_LannerReference], [Configuration_EmailNotificationTemplate], [Configuration_EmailNotificationCheck], [Configuration_DateCreated], [Configuration_DateModified]) VALUES (1, N'Demo Customer', N'LAN_123', N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>[SUBJECT]</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body style="margin: 0; padding: 0; background: #f9f9fb;" >
	<table border="0" cellpadding="0" cellspacing="0" width="100%">	
		<tr>
			<td style="padding: 10px 0 30px 0;">
				<table align="center" border="0" cellpadding="0" cellspacing="0" width="600" style="border: 1px solid #cccccc; border-collapse: collapse;">
					<tr>
                        <td align="center" bgcolor="#21567b" style="padding: 40px 0 30px 0; color: #153643; font-size: 28px; font-weight: bold; font-family: Arial, sans-serif;">
                            <img src="[DOMAIN]/Assets/Images/lanner-email.png" alt="Lanner" style="display: block;" />
                        </td>
					</tr>
					<tr>
						<td bgcolor="#ffffff" style="padding: 40px 30px 40px 30px;">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td style="color: #424242; font-family: Arial, sans-serif; font-size: 24px;">
										<b>[SUBJECT]</b>
									</td>
								</tr>
								<tr>
									<td style="padding: 20px 0 30px 0; color: #424242; font-family: Arial, sans-serif; font-size: 14px; line-height: 20px;">
										[BODY]
                                        [LINK]
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
                        <td bgcolor="#00324B" style="padding: 0 0 0 30px; height: 84px;">
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td style="color: #ffffff; font-family: Arial, sans-serif; font-size: 13px;" width="100%">
                                        &copy; Lanner 2015<br />
                                    </td>
                                </tr>
                            </table>
                        </td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>', CAST(GETDATE() AS DATE), GETDATE(), GETDATE())
GO

-- [dbo].[tblApplicationType]
INSERT [dbo].[tblApplicationType] ([ApplicationType_ID], [ApplicationType_Name], [ApplicationType_HasLayoutView], [ApplicationType_DateCreated], [ApplicationType_DateModified]) VALUES (1, N'FLS Application', 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationType] ([ApplicationType_ID], [ApplicationType_Name], [ApplicationType_HasLayoutView], [ApplicationType_DateCreated], [ApplicationType_DateModified]) VALUES (2, N'Generic Application', 0, GetDate(), GetDate())
GO

-- [dbo].[tblApplicationElementType]
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (1, 0, N'Canvass', N'element-type-canvass', N'<div id="canvass" class="application-element"><div class="application-element-container"></div></div>', 1, 0, 0, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (2, 1, N'Tab', N'element-type-tab', N'<ul class="application-element tab-menu-content-configure">
    <li>
        <div class="tab-options">
            <label class="action-label">Tab Name</label>
            <input class="action-input" />
        </div>
        <div class="tab-settings">
            <div class="visible">
                <span class="switch-name">Visible</span>
                <div class="switch">
	                <input type="checkbox" checked="checked" id="checkbox-visible" class="yes-no" value="">
	                <label for="checkbox-visible" class="label"><span></span></label>
                </div>
                <div class="tab-delete">
                    <a class="action grey" href="#"><i class="delete"></i><span>Delete</span></a> 
                </div>
            </div>
        </div>
		<div class="application-element-container"></div>
	</li>
</ul>', 1, 1, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (3, 2, N'Group', N'element-type-group', N'<div class="application-element">
	<div class="group full">
		<div class="group-header">
			<span class="mover">
				<a href="javascript:void(0);"></a>
			</span>
			<span class="group-name">
				<input class="action-input">
			</span>
			<div class="right">
				<div class="upload">
					<span class="switch-name">Allow bulk upload</span>
					<div class="switch">
						<input type="checkbox" checked="checked" id="allow-upload" class="yes-no" value="">
						<label for="allow-upload" class="label"><span></span></label>
					</div>
				</div>
				<div class="group-type">
					<select class="selector">
						<option>Input List</option>
						<option>Grid</option>
					</select>
				</div>
				<span class="minimize"><a href="#"></a></span>
			</div>
		</div>
		<div class="group-content">
			<div class="application-element-container"></div>
		</div>  
	</div>
	<div class="clear"></div>
</div>', 1, 2, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (4, 3, N'Panel', N'element-type-panel', N'<div class="application-element">
	<div class="group-panel">
		<span class="group-panel-name">Full Panel</span>
		<div class="group-panel-content">
			<div class="application-element-container"></div>
		</div>
	</div>
	<div class="clear"></div>
</div>', 1, 3, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (5, 4, N'Label', N'element-type-label', N'<div class="application-element group-panel-item">
	<label class="action-label">Label</label>
</div>', 0, 0, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (6, 4, N'Text', N'element-type-text', N'<div class="application-element group-panel-item">
    <label class="action-label">New Text Input</label>
    <input class="action-input sml">
    <span class="tooltip-icon"><a href="javascript:void(0)"></a></span>
</div>', 0, 1, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (7, 4, N'Date', N'element-type-date', NULL, 0, 2, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (8, 4, N'Datetime', N'element-type-datetime', NULL, 0, 3, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (9, 4, N'Time', N'element-type-time', NULL, 0, 4, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (10, 4, N'Combo', N'element-type-combo', NULL, 0, 5, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (11, 4, N'Checkbox', N'element-type-checkbox', NULL, 0, 6, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (12, 4, N'On Off', N'element-type-on-off', NULL, 0, 7, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (13, 4, N'Slider', N'element-type-slider', NULL, 0, 8, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (14, 4, N'Colour', N'element-type-colour', NULL, 0, 9, 1, GETDATE(), GETDATE())
INSERT [dbo].[tblApplicationElementType] ([ApplicationElementType_ID], [ApplicationElementType_ParentApplicationElementTypeID], [ApplicationElementType_Name], [ApplicationElementType_CSSClass], [ApplicationElementType_HTML], [ApplicationElementType_Container], [ApplicationElementType_Sort], [ApplicationElementType_Visible], [ApplicationElementType_DateCreated], [ApplicationElementType_DateModified]) VALUES (15, 4, N'Distribution', N'element-type-distribution', NULL, 0, 10, 1, GETDATE(), GETDATE())
GO
