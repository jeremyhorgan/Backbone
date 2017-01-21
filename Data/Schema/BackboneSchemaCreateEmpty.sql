/****** Object:  Table [dbo].[tblAnalyticsEvent]    Script Date: 12/09/2016 09:44:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAnalyticsEvent](
	[AnalyticsEvent_ID] [int] NOT NULL IDENTITY(1, 1),
	[AnalyticsEvent_EventName] [varchar](60) NULL,
	[AnalyticsEvent_TimeOfEvent] [datetime] NULL,
	[AnalyticsEvent_DateCreated] [datetime] NULL,
	[AnalyticsEvent_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblAnalyticsEvent] PRIMARY KEY CLUSTERED 
(
	[AnalyticsEvent_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblApplication]    Script Date: 12/09/2016 09:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplication](
	[Application_ID] [int] NOT NULL IDENTITY(1, 1),
	[Application_ApplicationTypeID] [int] NULL,
	[Application_IconID] [int] NULL,
	[Application_Name] [varchar](60) NULL,
	[Application_ModelFilename] [varchar](240) NULL,
	[Application_Notes] [varchar](max) NULL,
	[Application_IconFilename] [varchar](240) NULL,
	[Application_IsTemplate] [bit] NULL,
	[Application_Published] [bit] NULL,
	[Application_Archived] [bit] NULL,
	[Application_ModelFile] [varbinary](max) NULL,
	[Application_ValidationScript] [varchar](max) NULL,
	[Application_DateCreated] [datetime] NULL,
	[Application_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblApplication] PRIMARY KEY CLUSTERED 
(
	[Application_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblApplicationElement]    Script Date: 12/09/2016 09:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicationElement](
	[ApplicationElement_ID] [int] NOT NULL IDENTITY(1, 1),
	[ApplicationElement_ApplicationID] [int] NULL,
	[ApplicationElement_ApplicationElementTypeID] [int] NULL,
	[ApplicationElement_ParentApplicationElementID] [int] NULL,
	[ApplicationElement_PanelDisplayMethodID] [int] NULL,
	[ApplicationElement_ReloadOnOpen] [bit] NULL,
	[ApplicationElement_WitnessID] [varchar](60) NULL,
	[ApplicationElement_Name] [varchar](60) NULL,
	[ApplicationElement_Label] [varchar](60) NULL,
	[ApplicationElement_SmallStep] [int] NULL,
	[ApplicationElement_Content] [varchar](max) NULL,
	[ApplicationElement_HelpCaption] [varchar](max) NULL,
	[ApplicationElement_DefaultValue] [varchar](max) NULL,
	[ApplicationElement_DataType] [varchar](60) NULL,
	[ApplicationElement_Size] [varchar](60) NULL,
	[ApplicationElement_Position] [varchar](60) NULL,
	[ApplicationElement_GridGroup] [varchar](60) NULL,
	[ApplicationElement_MinimumValue] [decimal](18, 6) NULL,
	[ApplicationElement_MaximumValue] [decimal](18, 6) NULL,
	[ApplicationElement_DecimalPlaces] [int] NULL,
	[ApplicationElement_Required] [bit] NULL,
	[ApplicationElement_LargeStep] [int] NULL,
	[ApplicationElement_Visible] [bit] NULL,
	[ApplicationElement_AllowBulkUploads] [bit] NULL,
	[ApplicationElement_Sortable] [bit] NULL,
	[ApplicationElement_Sort] [int] NULL,
	[ApplicationElement_DataSource] [int] NULL,
	[ApplicationElement_DataTextField] [varchar](60) NULL,
	[ApplicationElement_DataValueField] [varchar](60) NULL,
	[ApplicationElement_ListEntries] [varchar](max) NULL,
	[ApplicationElement_DataReference] [varchar](128) NULL,
	[ApplicationElement_DateCreated] [datetime] NULL,
	[ApplicationElement_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblApplicationElement] PRIMARY KEY CLUSTERED 
(
	[ApplicationElement_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblApplicationElementType]    Script Date: 12/09/2016 09:44:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicationElementType](
	[ApplicationElementType_ID] [int] NOT NULL,
	[ApplicationElementType_ParentApplicationElementTypeID] [int] NULL,
	[ApplicationElementType_Name] [varchar](60) NULL,
	[ApplicationElementType_CSSClass] [varchar](60) NULL,
	[ApplicationElementType_HTML] [varchar](max) NULL,
	[ApplicationElementType_Container] [bit] NULL,
	[ApplicationElementType_Sort] [int] NULL,
	[ApplicationElementType_Visible] [bit] NULL,
	[ApplicationElementType_DateCreated] [datetime] NULL,
	[ApplicationElementType_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblApplicationElementType] PRIMARY KEY CLUSTERED 
(
	[ApplicationElementType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblApplicationElementValue]    Script Date: 12/09/2016 09:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicationElementValue](
	[ApplicationElementValue_ID] [int] NOT NULL IDENTITY(1, 1),
	[ApplicationElementValue_ScenarioID] [int] NULL,
	[ApplicationElementValue_ApplicationElementID] [int] NULL,
	[ApplicationElementValue_Row] [int] NULL,
	[ApplicationElementValue_Value] [varchar](max) NULL,
	[ApplicationElementValue_ValueType] [varchar](60) NULL,
	[ApplicationElementValue_XCoordinate] [int] NULL,
	[ApplicationElementValue_YCoordinate] [int] NULL,
	[ApplicationElementValue_DateCreated] [datetime] NULL,
	[ApplicationElementValue_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblApplicationElementValue] PRIMARY KEY CLUSTERED 
(
	[ApplicationElementValue_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblApplicationElementValueLink]    Script Date: 12/09/2016 09:44:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicationElementValueLink](
	[ApplicationElementValueLink_ID] [int] NOT NULL IDENTITY(1, 1),
	[ApplicationElementValueLink_SourceApplicationElementValueID] [int] NULL,
	[ApplicationElementValueLink_TargetApplicationElementValueID] [int] NULL,
	[ApplicationElementValueLink_LinkName] [varchar](60) NULL,
	[ApplicationElementValueLink_Group] [int] NULL,
	[ApplicationElementValueLink_Sort] [int] NULL,
	[ApplicationElementValueLink_DateCreated] [datetime] NULL,
	[ApplicationElementValueLink_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblApplicationElementValueLink] PRIMARY KEY CLUSTERED 
(
	[ApplicationElementValueLink_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblApplicationType]    Script Date: 12/09/2016 09:44:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblApplicationType](
	[ApplicationType_ID] [int] NOT NULL,
	[ApplicationType_Name] [varchar](60) NULL,
	[ApplicationType_Sort] [int] NULL,
	[ApplicationType_HasLayoutView] [bit] NULL,
	[ApplicationType_DateCreated] [datetime] NULL,
	[ApplicationType_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblApplicationtype] PRIMARY KEY CLUSTERED 
(
	[ApplicationType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblAsset]    Script Date: 12/09/2016 09:44:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAsset](
	[Asset_ID] [int] NOT NULL IDENTITY(1, 1),
	[Asset_UserProfileID] [int] NULL,
	[Asset_EntityTableName] [varchar](60) NULL,
	[Asset_EntityID] [int] NULL,
	[Asset_Filename] [varchar](max) NULL,
	[Asset_AssetFile] [varbinary](max) NULL,
	[Asset_Name] [varchar](max) NULL,
	[Asset_DateUploaded] [datetime] NULL,
	[Asset_DateCreated] [datetime] NULL,
	[Asset_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblAsset] PRIMARY KEY CLUSTERED 
(
	[Asset_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblCompletedApplicationElement]    Script Date: 12/09/2016 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompletedApplicationElement](
	[CompletedApplicationElement_ID] [int] NOT NULL IDENTITY(1, 1),
	[CompletedApplicationElement_ApplicationElementID] [int] NULL,
	[CompletedApplicationElement_ScenarioID] [int] NULL,
	[CompletedApplicationElement_DateCreated] [datetime] NULL,
	[CompletedApplicationElement_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblCompletedApplicationElement] PRIMARY KEY CLUSTERED 
(
	[CompletedApplicationElement_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblConfiguration]    Script Date: 12/09/2016 09:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblConfiguration](
	[Configuration_ID] [int] NOT NULL,
	[Configuration_CustomerName] [varchar](60) NULL,
	[Configuration_LannerReference] [varchar](60) NULL,
	[Configuration_EmailNotificationTemplate] [varchar](max) NULL,
	[Configuration_EmailNotificationCheck] [date] NULL,
	[Configuration_DateCreated] [datetime] NULL,
	[Configuration_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblConfiguratiojn] PRIMARY KEY CLUSTERED 
(
	[Configuration_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblEventLog]    Script Date: 12/09/2016 09:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEventLog](
	[EventLog_ID] [int] NOT NULL IDENTITY(1, 1),
	[EventLog_UserProfileID] [int] NULL,
	[EventLog_IPAddress] [nvarchar](30) NULL,
	[EventLog_EntityID] [int] NULL,
	[EventLog_EntityTableName] [varchar](60) NULL,
	[EventLog_Message] [nvarchar](max) NULL,
	[EventLog_Content] [nvarchar](max) NULL,
	[EventLog_EntryDate] [datetime] NULL,
	[EventLog_DateCreated] [datetime] NULL,
	[EventLog_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblLogEntry] PRIMARY KEY CLUSTERED 
(
	[EventLog_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblGenerate]    Script Date: 12/09/2016 09:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGenerate](
	[Generate_Table] [nvarchar](60) NOT NULL,
	[Generate_ID] [int] NULL,
 CONSTRAINT [PK_tblGenerate] PRIMARY KEY CLUSTERED 
(
	[Generate_Table] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblNotification]    Script Date: 12/09/2016 09:44:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotification](
	[Notification_ID] [int] NOT NULL IDENTITY(1, 1),
	[Notification_EntityTableName] [varchar](60) NULL,
	[Notification_EntityID] [int] NULL,
	[Notification_NotificationTypeID] [int] NULL,
	[Notification_SenderID] [int] NULL,
	[Notification_RecipientID] [int] NULL,
	[Notification_ParentNotificationID] [int] NULL,
	[Notification_ThreadID] [int] NULL,
	[Notification_BatchID] [varchar](max) NULL,
	[Notification_NotificationPriorityID] [int] NULL,
	[Notification_NotificationStatusID] [int] NULL,
	[Notification_TimeSent] [datetime] NULL,
	[Notification_Subject] [varchar](240) NULL,
	[Notification_Body] [varchar](max) NULL,
	[Notification_Read] [bit] NULL,
	[Notification_Url] [varchar](max) NULL,
	[Notification_DateCreated] [datetime] NULL,
	[Notification_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblNotification] PRIMARY KEY CLUSTERED 
(
	[Notification_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblNotificationPriority]    Script Date: 12/09/2016 09:44:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotificationPriority](
	[NotificationPriority_ID] [int] NOT NULL,
	[NotificationPriority_Name] [varchar](60) NULL,
	[NotificationPriority_DateCreated] [datetime] NULL,
	[NotificationPriority_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblSupportTicketPriority] PRIMARY KEY CLUSTERED 
(
	[NotificationPriority_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblNotificationStatus]    Script Date: 12/09/2016 09:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotificationStatus](
	[NotificationStatus_ID] [int] NOT NULL,
	[NotificationStatus_Name] [varchar](60) NULL,
	[NotificationStatus_DateCreated] [datetime] NULL,
	[NotificationStatus_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblSupportTicketStatus] PRIMARY KEY CLUSTERED 
(
	[NotificationStatus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblNotificationType]    Script Date: 12/09/2016 09:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNotificationType](
	[NotificationType_ID] [int] NOT NULL,
	[NotificationType_Name] [varchar](60) NULL,
	[NotificationType_DateCreated] [datetime] NULL,
	[NotificationType_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblNotificationType] PRIMARY KEY CLUSTERED 
(
	[NotificationType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblPanelDisplayMethod]    Script Date: 12/09/2016 09:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPanelDisplayMethod](
	[PanelDisplayMethod_ID] [int] NOT NULL,
	[PanelDisplayMethod_ApplicationTypeID] [int] NULL,
	[PanelDisplayMethod_Name] [varchar](60) NULL,
	[PanelDisplayMethod_Repeatable] [bit] NULL,
	[PanelDisplayMethod_Editable] [bit] NULL,
	[PanelDisplayMethod_Active] [bit] NULL,
	[PanelDisplayMethod_DateCreated] [datetime] NULL,
	[PanelDisplayMethod_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblPanelDisplayMethod] PRIMARY KEY CLUSTERED 
(
	[PanelDisplayMethod_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblProject]    Script Date: 12/09/2016 09:44:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProject](
	[Project_ID] [int] NOT NULL IDENTITY(1, 1),
	[Project_ApplicationID] [int] NULL,
	[Project_IconID] [int] NULL,
	[Project_Name] [varchar](60) NULL,
	[Project_Stakeholders] [varchar](max) NULL,
	[Project_WhatIsBeingAsked] [varchar](max) NULL,
	[Project_AnswerResponseDate] [date] NULL,
	[Project_Archived] [bit] NULL,
	[Project_SevenDayDeadlineNotificationSent] [bit] NULL,
	[Project_ThreeDayDeadlineNotificationSent] [bit] NULL,
	[Project_DeadlineReachedNotificationSent] [bit] NULL,
	[Project_DateCreated] [datetime] NULL,
	[Project_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblProject] PRIMARY KEY CLUSTERED 
(
	[Project_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblReport]    Script Date: 12/09/2016 09:44:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport](
	[Report_ID] [int] NOT NULL IDENTITY(1, 1),
	[Report_ApplicationID] [int] NULL,
	[Report_Name] [varchar](60) NULL,
	[Report_DashboardID] [varchar](60) NULL,
	[Report_ProjectReport] [bit] NULL,
	[Report_ProviderName] [varchar](60) NULL,
	[Report_DateCreated] [datetime] NULL,
	[Report_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblReport] PRIMARY KEY CLUSTERED 
(
	[Report_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblScenario]    Script Date: 12/09/2016 09:44:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScenario](
	[Scenario_ID] [int] NOT NULL IDENTITY(1, 1),
	[Scenario_ApplicationID] [int] NULL,
	[Scenario_ScenarioStatusID] [int] NULL,
	[Scenario_ScenarioResultStatusID] [int] NULL,
	[Scenario_Name] [varchar](60) NULL,
	[Scenario_Description] [varchar](max) NULL,
	[Scenario_WarmUpPeriod] [date] NULL,
	[Scenario_StartDate] [date] NULL,
	[Scenario_EndDate] [date] NULL,
	[Scenario_Replications] [int] NULL,
	[Scenario_Skip] [int] NULL,
	[Scenario_SingleReplication] [bit] NULL,
	[Scenario_ReplicationEquivalent] [int] NULL,
	[Scenario_Archived] [bit] NULL,
	[Scenario_Preview] [bit] NULL,
	[Scenario_APIFilename] [varchar](max) NULL,
	[Scenario_APILocation] [varchar](max) NULL,
	[Scenario_APIExperimentID] [varchar](max) NULL,
	[Scenario_Layout] [varchar](max) NULL,
	[Scenario_LayoutBackgroundIconID] [int] NULL,
	[Scenario_LayoutBackgroundX] [int] NULL,
	[Scenario_LayoutBackgroundY] [int] NULL,
	[Scenario_DateCreated] [datetime] NULL,
	[Scenario_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblScenario] PRIMARY KEY CLUSTERED 
(
	[Scenario_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblScenarioDiagnostics]    Script Date: 12/09/2016 09:44:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScenarioDiagnostics](
	[ScenarioDiagnostics_ID] [int] NOT NULL IDENTITY(1, 1),
	[ScenarioDiagnostics_ScenarioID] [int] NULL,
	[ScenarioDiagnostics_Replication] [int] NULL,
	[ScenarioDiagnostics_Status] [varchar](60) NULL,
	[ScenarioDiagnostics_Messages] [varchar](max) NULL,
	[ScenarioDiagnostics_DateCreated] [datetime] NULL,
	[ScenarioDiagnostics_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblScenarioDiagnostics] PRIMARY KEY CLUSTERED 
(
	[ScenarioDiagnostics_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblScenarioInProject]    Script Date: 12/09/2016 09:44:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScenarioInProject](
	[ScenarioInProject_ID] [int] NOT NULL IDENTITY(1, 1),
	[ScenarioInProject_ProjectID] [int] NULL,
	[ScenarioInProject_ScenarioID] [int] NULL,
	[ScenarioInProject_DateCreated] [datetime] NULL,
	[ScenarioInProject_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblScenarioInProject] PRIMARY KEY CLUSTERED 
(
	[ScenarioInProject_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblScenarioResultStatus]    Script Date: 12/09/2016 09:44:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScenarioResultStatus](
	[ScenarioResultStatus_ID] [int] NOT NULL,
	[ScenarioResultStatus_Name] [varchar](60) NULL,
	[ScenarioResultStatus_DateCreated] [datetime] NULL,
	[ScenarioResultStatus_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblScenarioResultStatus] PRIMARY KEY CLUSTERED 
(
	[ScenarioResultStatus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblScenarioStatus]    Script Date: 12/09/2016 09:44:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblScenarioStatus](
	[ScenarioStatus_ID] [int] NOT NULL,
	[ScenarioStatus_Name] [varchar](60) NULL,
	[ScenarioStatus_DateCreated] [datetime] NULL,
	[ScenarioStatus_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblScenarioStatus] PRIMARY KEY CLUSTERED 
(
	[ScenarioStatus_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblUserProfile]    Script Date: 12/09/2016 09:44:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserProfile](
	[UserProfile_ID] [int] NOT NULL IDENTITY(1, 1),
	[UserProfile_UserProfileTypeID] [int] NULL,
	[UserProfile_FirstName] [varchar](30) NULL,
	[UserProfile_LastName] [varchar](30) NULL,
	[UserProfile_DisplayName] [varchar](120) NULL,
	[UserProfile_EmailAddress] [varchar](240) NULL,
	[UserProfile_Telephone] [varchar](60) NULL,
	[UserProfile_Active] [bit] NULL,
	[UserProfile_LastLogin] [datetime] NULL,
	[UserProfile_Username] [varchar](240) NULL,
	[UserProfile_Password] [varchar](60) NULL,
	[UserProfile_Salt] [varchar](60) NULL,
	[UserProfile_Culture] [varchar](30) NULL,
	[UserProfile_TimezoneOffset] [int] NULL,
	[UserProfile_ReceiveEmailNotifications] [bit] NULL,
	[UserProfile_DateCreated] [datetime] NULL,
	[UserProfile_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblUserProfile] PRIMARY KEY CLUSTERED 
(
	[UserProfile_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblUserProfileInApplication]    Script Date: 12/09/2016 09:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserProfileInApplication](
	[UserProfileInApplication_ID] [int] NOT NULL IDENTITY(1, 1),
	[UserProfileInApplication_UserProfileID] [int] NULL,
	[UserProfileInApplication_ApplicationID] [int] NULL,
	[UserProfileInApplication_DateCreated] [datetime] NULL,
	[UserProfileInApplication_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblUserProfileInApplication] PRIMARY KEY CLUSTERED 
(
	[UserProfileInApplication_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblUserProfileType]    Script Date: 12/09/2016 09:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserProfileType](
	[UserProfileType_ID] [int] NOT NULL,
	[UserProfileType_Name] [varchar](60) NULL,
	[UserProfileType_DateCreated] [datetime] NULL,
	[UserProfileType_DateModified] [datetime] NULL,
 CONSTRAINT [PK_tblUserProfileType] PRIMARY KEY CLUSTERED 
(
	[UserProfileType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
/****** Object:  Table [dbo].[tblVersion]    Script Date: 12/09/2016 09:44:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVersion](
	[Version_ID] [int] NOT NULL,
	[Version_Number] [float] NOT NULL,
	[Version_Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Version] PRIMARY KEY CLUSTERED 
(
	[Version_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
