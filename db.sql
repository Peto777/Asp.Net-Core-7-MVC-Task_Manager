
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskManagerModels]    Script Date: 18-Mar-24 10:51:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskManagerModels](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[ReleaseDate] [datetime2](7) NOT NULL,
	[Task] [nvarchar](max) NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeletedAt] [datetime2](7) NULL,
	[FilePath] [nvarchar](max) NULL,
	[FileData] [nvarchar](max) NULL,
	[FileContentType] [nvarchar](max) NULL,
 CONSTRAINT [PK_TaskManagerModels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240308120915_Task', N'7.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240310085657_PridanieStlpcov', N'7.0.16')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240311203354_TaskManagerModels', N'7.0.16')
GO
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'e41564bf-989f-42ab-2f27-08dc3f6d18c0', N'Projekt 1', CAST(N'2024-03-08T13:41:00.0000000' AS DateTime2), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', N'Poznamky@model IEnumerable<TaskManager.Models.TaskManagerModels>

@{
    ViewData["Title"] = "Task Manager";
}

<h1>Task Manager</h1>

<p>
    <a asp-action="Create" class="btn btn-primary">Create New</a>
</p>

<table class="table table-striped table-bordered">
    <thead class="thead-dark">
        <tr>
            <th>
                @Html.DisplayNameFor(model => model.Title)
            </th>
            <th>
                @Html.DisplayNameFor(model => model.ReleaseDate)
            </th>
            <th>
                Task
            </th>
            <th>
                Notes
            </th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        @foreach (var item in Model)
        {
            <tr>
                <td>
                    @Html.DisplayFor(modelItem => item.Title)
                </td>
                <td>
                    @Html.DisplayFor(modelItem => item.ReleaseDate)
                </td>
                <td>
                    <input type="text" class="form-control" value="@item.Task" />
                </td>
                <td>
                    <input type="text" class="form-control" value="@item.Notes" />
                </td>
                <td>
                    <a asp-action="Edit" asp-route-id="@item.Id" class="btn btn-info">Edit</a> |
                    <a asp-action="Details" asp-route-id="@item.Id" class="btn btn-success">Details</a> |
                    <a asp-action="Delete" asp-route-id="@item.Id" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        }
    </tbody>
</table>
', 1, CAST(N'2024-03-08T14:55:21.3661157' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'299e87c3-ea16-4dd9-4e94-08dc3f768ece', N'Projekt 2', CAST(N'2024-03-08T14:48:00.0000000' AS DateTime2), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', 0, NULL, N'/uploads/b743a7c2-03cf-4635-8d80-8c7aad7356fd.png', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'6a4d123d-c26c-4597-3a3d-08dc3f7723f2', N'Projekt 3', CAST(N'2024-03-23T14:53:00.0000000' AS DateTime2), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', 0, NULL, N'/uploads/64711d74-328a-4b96-9e92-781ff4a135f4.png', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'07f2c0f3-5f69-4001-ccb5-08dc3f7f7948', N'Projekt 4', CAST(N'2024-03-08T15:52:00.0000000' AS DateTime2), N'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', N'What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 0, NULL, N'/uploads/30633fa9-e981-465d-a87d-e7911915df39.png', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'44ec1ece-ec59-4739-c4df-08dc3f859a80', N'Projekt 22', CAST(N'2024-03-08T16:37:00.0000000' AS DateTime2), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 0, NULL, N'/uploads/7419fe8a-b8e9-42cd-b0f3-196231553ecf.m4a', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'6626b6b0-4b73-43b4-c4e0-08dc3f859a80', N'Projekt 33', CAST(N'2024-03-08T16:38:00.0000000' AS DateTime2), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 1, CAST(N'2024-03-16T13:30:43.2414061' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'709f5b82-f492-4852-c4e1-08dc3f859a80', N'Projekt 44', CAST(N'2024-03-08T16:38:00.0000000' AS DateTime2), N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', N'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 1, CAST(N'2024-03-08T16:49:58.2379969' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'2009b54a-03e1-498d-a8d4-08dc40e7f68e', N'Projekt 45', CAST(N'2024-03-10T10:53:00.0000000' AS DateTime2), N'yxccccccccccccccccccccccc', N'xcbbbbbbbbbbbbbbbbbbbbb', 1, CAST(N'2024-03-16T01:49:54.8609402' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'71b6b8bb-2752-4bb1-83ef-08dc40f2de3f', N'cd', CAST(N'2024-03-10T12:11:00.0000000' AS DateTime2), N'xc', N'vf', 1, CAST(N'2024-03-15T19:42:21.0537183' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'bdb9ee69-39ca-4c3b-6398-08dc42081bfe', N'xcd', CAST(N'2024-03-11T21:16:00.0000000' AS DateTime2), N'xcd', N'cdf', 1, CAST(N'2024-03-15T19:42:17.4221581' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'81d139f2-24d4-4d7f-a2a2-08dc4526a177', N'cvf', CAST(N'2024-03-15T20:32:00.0000000' AS DateTime2), N'asde', N'yxsd', 1, CAST(N'2024-03-15T19:42:14.5904153' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'13974b2f-4c9b-471c-10d3-08dc4526e386', N'xcdfv', CAST(N'2024-03-15T20:34:00.0000000' AS DateTime2), N'xcd', N'sxd', 1, CAST(N'2024-03-15T19:42:11.6672117' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'88070712-a8b8-42a0-1dbb-08dc45275868', N'cvf', CAST(N'2024-03-15T20:37:00.0000000' AS DateTime2), N'xcd', N'xcd', 1, CAST(N'2024-03-15T19:42:08.2987471' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'6e75e2bd-bcb9-4a91-e2b9-08dc4528113e', N'yxs', CAST(N'2024-03-15T20:42:00.0000000' AS DateTime2), N'cdf', N'yxd', 1, CAST(N'2024-03-16T13:30:40.4575797' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'7bcfbafe-c9c3-4021-e2ba-08dc4528113e', N'dcf', CAST(N'2024-03-15T20:42:00.0000000' AS DateTime2), N'cvf', N'cvf', 1, CAST(N'2024-03-16T01:49:58.6210221' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'9e194bc0-56da-488c-8e57-08dc45b467ce', N'as', CAST(N'2024-03-16T13:27:00.0000000' AS DateTime2), N'yx', N'cv', 1, CAST(N'2024-03-16T13:30:37.7769600' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'227232ba-1ad5-4838-c86e-08dc45b4f1c1', N'cd', CAST(N'2024-03-16T13:30:00.0000000' AS DateTime2), N'df', N'cv', 1, CAST(N'2024-03-16T14:38:38.1927680' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'fa27809a-2222-4965-dd1e-08dc45b57485', N'fg', CAST(N'2024-03-16T13:34:00.0000000' AS DateTime2), N'df', N'df', 1, CAST(N'2024-03-16T14:38:36.1612445' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'e505aa01-af4b-4ef8-d208-08dc45b643de', N'cvfg', CAST(N'2024-03-16T13:40:00.0000000' AS DateTime2), N'cv', N'fg', 1, CAST(N'2024-03-16T14:38:33.3938023' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'd1eb8aec-2c74-4a87-a74c-08dc467bdc28', N'xc', CAST(N'2024-03-17T13:14:00.0000000' AS DateTime2), N'cv', N'df', 1, CAST(N'2024-03-17T13:30:59.5165434' AS DateTime2), N'�က䙊䙉Āā阀阀 硅晩 䵍⨀ ࠀ؀ᨁԀ Ā 嘀ᬁԀ Ā 帀⠁̀ ĀȀ ㄁Ȁ ᄀ 昀㈁Ȁ ᐀ 砀榇Ѐ Ā 谀 가阀 Ā 阀 Ā 慰湩⹴敮⁴⸴⸰㤱 〲㘱〺㨴〲ㄠ㨴㔰ㄺ7ȀʠЀ Ā 쐁ΠЀ Ā 츁   ̀ᨁԀ Ā 혀ᬁԀ Ā �⠁̀ ĀȀ    䠀 Ā 䠀 Ā䀂䍉彃剐䙏䱉Eā 。䑁䕂ဂ 湭牴䝒⁂奘⁚켇؀̀   捡灳偁䱐  潮敮       Ā 훶Ā  ⷓ䑁䕂                       ਀灣瑲 ﰀ ㈀敤捳 、 欀瑷瑰 鰁 ᐀止瑰 뀁 ᐀呲䍒 쐁 ฀呧䍒 퐁 ฀呢䍒  ฀塲婙  ᐀塧婙 ࠂ ᐀塢婙 ᰂ ᐀整瑸  潃祰楲桧⁴㤱㤹䄠潤敢匠獹整獭䤠据牯潰慲整d 敤捳   ᄀ摁扯⁥䝒⁂ㄨ㤹⤸                                        奘⁚   凳Ā Ā찖奘⁚        畣癲   Ā㌂ 畣癲   Ā㌂ 畣癲   Ā㌂ 奘⁚   ᢜ ꕏ ﰄ奘⁚   贴 Ⲡ 锏奘⁚   ㄦ ⼐ 鲾�䌀Ѐ̂̃Ђ̃ЃЄԄ؉ԅԅࠋ؈ഉഋ഍ఋฌᐐฑጏఏሌመᔓ᜖᜗ᄎᬙᘙᐚ᜖６ÛŃЄԄԅ؊ਆ༖༌ᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖᘖ샿ᄀĈǎτ∁Ȁđᄃ！ÄĀąāā   Ā̂Ԅ܆ईଊ쓿딀ẴЂԃЅĀŽ̂Ѐԑℒ䄱ጆ慑∇ᑱ脲ꆑ⌈녂ᗁ텒⓰戳色ਉ᜖ᤘ┚✦⤨㐪㘵㠷㨹䑃䙅䡇䩉呓噕塗婙摣晥桧橩瑳癵硷穹蒃蚅袇誉鎒閔鞖馘ꊚ꒣ꚥꢧꪩ뎲떴랶릸슺쓃웅죇쫉폒헔ퟖ�笠￺Äğ̀āāāā  Ā̂Ԅ܆ईଊ쓿딀ĂЂ̄܄ЅȁwȁᄃԄㄡሆ允愇፱㈢ࢁ䈔ꆑ솱⌉刳ᗰ牢૑␖᠗ᨙ✦⤨㔪㜶㤸䌺䕄䝆䥈半啔坖奘捚敤杦楨獪畴睶祸艺蒃蚅袇誉鎒閔鞖馘ꊚ꒣ꚥꢧꪩ뎲떴랶릸슺쓃웅죇쫉폒헔ퟖ�笠￺Ú̌ᄂᄃ㼀ﬀ諺ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂輪떉㞍�븝痗뢛㓭㛽Ꝯﲐ䚱妊ﶘ㐀稁ﲊﵫ뺥᝟㈾�뼴⏳⭏뙏齳�⊡ﴨ踳㩎ㆳ峯眝ˇ훚륂ꇻ繅턗�˼ᖅ㿹ǻ᯼᜿㢾ꙛ沥蟟忶ի쮇ܨ盷ﻧズἹ埜׮꽾ન咡ꀀ`场樭鱊澹譱ᑅ⁖儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔E儔Eﰟꌕ⿣㓙忛窃�껯廂臸澣ᚻ䍷置⃞䝈잢跙嵽폱ۢ녖緣腩䲃⶷㬔ힰἳ㢖�膘㋬ͺ蹟㹾⻱ᨯ鹪휪䶮ꗆ�촽鷌ㆷᓎ偶0ì꬝޳驋♤텤ᕅ࣪䬪礻뗢蚵ꝉ쒝䕱阚执ᑰ퐁䂒䟅婟셿︪缍寂᫱襟숟藒闓뾸‣冏递朴ꢱ冩⹂ཌ뾰�やᱼῸ씳甯鞹甇臃냻걻葫踝︉帣䖵乊뙍児ᕅᐠ䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀䕑᐀幑סּﱭ蝟﯀曭據鮧ም舣㈇﶑ퟘꂐ얨䧊㸠＼舀粧･萀罤됍봻⿺▅洿潤ÿ氘裺⦁�冾岧㗍쓅ភ밒䪳�㮳鈓㵉㵉뗩폭蒂兔䔡唔뎁�跇熼䁏﮷ꕆ�딥皺輅윬ꢲᏋ˘肟翴㾆琋տ聨靽뙉�዗骟孉鳝箳ᵧ簅ﾧЀﴵꊟ糝흢ㆭꡳ�⯨ΐ枉惃瀽�킫羦缙巡ᵼሾ껑뿼砑㞺䊷融뎵㓩犼̋꿥쳻⭇湞丢䖭⍎萾ÿ讄ￃ팝㼮ꏱዾ༯ÿ矐ｍ쀀ﾸ였Ⴟꭨ諺惾﮹ｽऀ蜗ÿ㯨ﾦ罜䟣⓼὞ÿﾛ脀ｱ贀⁾䟑埔׳�ോ䭗颾旃妩죜焗杈恗瀽丏居馯�뼆廡⃼ÿ쾄둚ﳲ틨㩼嶶轢뛘왼ꃺ괼㝽㕜ꌢ錦슸⢊¨誢(誢(誢(誢(誢(誢(誢(誢(誢(誢(誢(誢(ய�噱縪༎䣼࿵ㇾ㕟ÿ㋁絴凶ꟓ튻껬㨥䬲豮맇ꐕḣ⥗퀁썿繣῎凴ꢇ㾊뇡枿﨏�䏹㿔엸᝻⏼ιÿᚠﾛ耀ﾑ蔀ﹿ媀﹯䜂ᓾ䯯﮳ÿǠ뿣�돟ﶇ演ꇼῪ拼潬쏙諾︷️帱ￅࠀ蟯ÿרﾦ缤䟡⏼ιÿᚠﾛ耀ﾑ蔀ꔗ﷙ÿð�泸�ﻃ㞊僾࿵ㇾﱇ㜶ÿᭅÿ稨ﾇ᠀抯ÿ瞄ￃ팂㼒ꏰᇾ࿟ÿௐｍ쀀ｈ숀튋ﻬÿø㛼￡䔀；⠀蝺ÿꌘ᯾ｰꈀﾍ鐀䌽ÿ垌羱㯂￡切椁Ἁ凸ÿﾇꘅÿⓠ罶ﱿ㰀ﹷᬛ烶ÿ趢ÿ㶔ｃ谀ｑഀﮍ缸䛑ÿỊﾡ였�ÿý�ӼﲏＨ萀썷ÿ˴翓ደ㾻ﺿḀ［ഀﮍ缸䛑ÿỊﾡ였Ｈ蘀ﷆ㾜ꏨ倏ÿᗣ忬軰翸胾潚˾﹇缔㯂￡切椁Ἁ凸嵺�ÿༀ＝蘀ﷆ㾜ꏨ倏ÿᓣ썿繣῎凴ꢇ籇＿䀀㜭ÿ⌁ÿ㼊ᷡ￰ﴀ됀ﳟ輄⣼⺽ÿހﾎ쌀繣῎凴ꢇ᜾퇾ÿ㸆砢�黂꾖蹴�敿䏞⊸掗䢾䚕ጔ꿉ｂ萀썷ÿ˴翓ደ沩練츢俠ꕩ䇙䔒詮錂羢ﱿⴀ뎑ֻᥕ捦ހ㖩㧹移捼豯ᰟ긮﮴ﺂ퀝壷ꫨ쬏̢쿳妏朘瘽ބ綥ﾉԀￋࠀ숗ᙝ曯�਩촷捭埒⿶곾荺ᰡ纭坨๮鲖䳬ꈨ圐纠㿌謟᧟龴夆酹䳛盾犥ﺃ洽茐﨣ѧ㊫緺ÿ턄㗸ÿ�쫠鿸둙ﳲ䯤莙쾯歫쎌㴗Љົ怹�熬紕⾜࿔酸㮼ῠ좛瓒ฏ�ꅭ憐弅纭繃ΐ딓謯ᦿ漵弚釹燃锧宧켱淙≓︸쮸㨶ㆳ忯罜嫁㈾鏽때㟸�﻾◰뻮럑ᘩ䍷！砀ↁ謞星慕ꖃ칥揷䕡圔艨쎽׶㛸⽾灼辷뙒砲썯⿻芵Δ믻ｳ崀ဘﬕ庁朧㵯�뙖즰躸ꌨ챒们ꠂ鈜َ݃쿁嬨荾儼ÿ�饛睰ぜ묟먇ꃆ佰᫱쓧퍰ݶ옣᨞篸篠ᛏ델ᩐ譮袦췅럈徒簫ኋ酼ㆫ뫋Ǝ緆欲翊뇡枿﨏�䏹㿔엸絻뷥�宻䇝㞾⩇匆醃碐תｒ萀썷ÿ˴翓ደ⪯ᘮ鏷潬쏙諾︷️䜱㛼￡䔀；⠀蝺ÿ꼘｢萀썷ÿ˴翓ደﺣ�／퀀䴋ÿ䣀ÿꫂ믴뼿þ㬞ÿ贍㣻텿ｆ쨀ꄞÿ⯆糘⌝黅팔䯼嶠돽핋혭컢쫣ﱸ�㙤Ǘ킇殀ﶈอ�넔�牼䴭튑ϕᘩ邒́䶃賽ÿ퓤Ǽÿﵢﺷ⢀憔췉㴐訲갨⢀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⬀鿧◸ﳯ亚ﾛ愀᳽簵￳Ѐﾽ錀퍉紩ÿ骣辴뿪㹐ꊆ⮊ਰꈨ઀ꈨ઀ꈨ઀꼨㾖᩿꣠쁟౿脎큼菸䣅良索媲荘沇䆎芐�큉垁๎兲絀䕏≾ÿ凂濢᣺澵෼ﾓ言ﺣ輒缓에羫泠ﲟ癕䕽ÿ기�彑뾈铰魸蛾嬭ÿ搃ÿ꣢ÿꎄ�ㇴ�᯸Ｇᔀ푇켅ꫛ뭾쉣螺떈ꖻ펵뮴륧馺Ⓔꑨ❵밂﹓쟰섏甘ᒏ�ᐟ봄䮹鶹틚縌ღﰘ殧渖率纐꿨６舀粵�꼝鷁糯텂溷ᬚ侀䝈珽껷텨ꯦ飈鋏ÿ轨᪉얧讏쟚떍쥍�ᛛ뗈庶蠢鉱넺�骸꼨⑥醕䔡⸕榟罳䆨散霄㜗걒䍐阚ᵹઈު䥒਀筠ﲟ�퇠뗸뫱彛쌳᭞笩ꑜ鿭寝䧙ﬣﺈ𥉉쟋㿺ￂ蔀읚떍ඒ鞾婮̨깡㽦焬묯儱㋬ͺ흜矬雰쇧㜝䳃뚑犯�亭㺸퍥릁¨㴗꽉뾌ꫠ᤟ᾙ巃譾䧡빉潤ÿ㜄䓔伉賷햞䯦ꋽ몵쵼樓㏾껱纭�婪펽��ᱳ䟡ͥ฀ǀ닚ꈨ㶽ᒄ孑฿ⷼ碬쟛弚缋檴뵚寒ꝛ塠쳲⩻놌耽账婢﹯圉毰ዾ裟ﳒ흎㜭﹨鐖鸮뾮씭ù㶂䩄罃톼욞䞿锫⟸ⷠ슗῝㫁Ｂꌀ癩ỡ롒襫㉏��甅ꯖ⛭䋟誂갨⡀誢橿蘭缶龈⣶鿪䧺昭웾繪＀넀�ÿᕀﮥｐ준ﲳｄ넀呇ÿ䧒㝫㏶ÿ厓߰诽�ú㾭ퟥ࿌ꉌ⮊ਰꈨ઀ꈨ઀ꈨ઀ꈨ઀ꈨ઀ꈨ઀ꈨ઀ꈨ઀ꈨ઀ꈨ઀৾ｻ☀ꚓÿ勘￻䜀紵弍＼섀缯틤�ૻ罟⎭㧼꽺࿔ꢡ誢ˌ⢊ʠ⢊ʠ⢊ಠᮯ譸蒗⼵欓䮷ꙭ㛩环⥵ᓾ鍑�肞⑵�ᶿ㽾䑼뻕簪홙漼隫㕙켙旷恭陟蜨꫻伆鍳體쟺૾춗떸㗸�釼䉼럑ﭖ�ꞟᄒ`꾡殇쇔㮏觝ᒅ嵑ંߺ৾﹫꜖죆㶵퍞藟床Ǫ⧗⹱獿쫜蝙䙵씝㙸掓꩹뙪滚涝촥׉ᆼ䚖ꩠ㮪䢒凞ﯹﰤ댨㯸俰Ⲣꥯטּ녖齰�샭菟哝謀胬⛵놹祕攡λꖋ⩼䧸碬囟쎧宋�圷쐍ད飷醌ː坻꿣㲍ꩁ꿸뫅覗쭵몦뗔ꝛ몺뾙�Ͷ̸ 見﹏謊韱᏾誯ል绯夙⠧⷟ﻍ젶頱ꇇ㯳駱陪霒㤤儘ᕅǔ幟ÿ⧁ൾ쉿ﻉ鮶뾴줍槥≋돼ᇟ䓔ᾤ鷷רּ뺦朝鿇㐐ޟშ�놎뙴苰吾ⳏꆪ麘䷁왾⇼困鎆�嘑഻퐚敆ᑠￊ稀彉飝ᾳ犭쟲溕軆྿쿁헚즴뷽暩䓇㶟첁瞤흘笮ᐒၿ즯ꤋ릥銹陗鱩銼ᘻ执䥲ꤧ榯볽ㆾ욷踏圗紺翉栎걛整Ƒ蚑ﵳ胐꿴ꬓ勃烶盗ꈠ⮊ʠ料ÿ䲂᩼쿾滑ㆾ뙫릘ᗔ鄕蹹焀�삆덟졗돟숇䟽淆섧纶癤㿓ꦟꁜÿ宏⁄￈尀꬐겞㯊蜧굴䈿泐䶴툢䬻㨍ⷝ悭憌赢⨔直⬀ᦋ陗謼톨該꼨愰ᑅŐᑅݐ﬋ｐ준ﲳｄ넀呇ÿ䧒㝫㏶ÿ厓߰诽�ú⾭蟚䷾ﴧ㪊ﺧ䮒뽙龱髼肟뙟ÿאｩ⸀悾敺儔聙䕑䕑䕑䕑䕑䕑䕑䕑䕑䕑콗�㓹㞝싾�㧺索ﻧ笉ÿ錦ﾦ�ﭒÿ㕇Ὡ쯡绕綠䔍嘔ᑠ䕑᐀䕑ᔀﻃ뿑됒蒿ߟ翵樛⑛㡫妶㍛ⵗ凄ﰎ➷ᐝ앝晾셿㹏Ｒ숀ﾻࠀ譎罸㋂ⰼ빑ꭋ鋞뢿�᰹洵靂骴]쯹髅ꧦ忢℞껖핑帮㯲✖鏛뗓텧筅蕄圔솛쾚㿄�荇࠴�៫ੋ㈒⾱酗ﲱꄨﮘꄩ⮻㺰ﾥ舀ﱏ︚입뷅퍶齶㦡톶䖖毢뾲ꀼꈞ氵ᆜ埊忔垷Ⓠ㷸㻰ﻲ쑗츺ᷫ㌕ⳳ粄㗒봻ᐷꉗぼ雰鞞㷡嘙䯟拄ࡉ�㳋窮普䥽쮯�뼌︘常雪덳罸�ꉣ硆ᔆ㐿늑믞荶毷苌詸篗鸡㐽ⲏⲍ캮엮颙뇤䤽촽ᐥꙗꈠ�ῆ媍葟쐭抉딺࿊䊴옼拏ᅲ�ꕵ⠩�帟셿︦缍硤ﻢ榻�ᩡ䏗ᝉ궘쒁ಓ⻴棃��껫ÿ龂曼ÿބ⃡㛰瞋⻾ꎐ홼㷖缥｢뇇躐빖풄㳯蜏�恎ฏ�䘡�ᓞ員⩻ހ쁓좯�ꥆ揱卭扴淶皶닅洭袗ᶢ岸蹤墬꿷谺穝澮㍤ꊉ⮊გ䕑콻ᏼﳗ鼭킍櫜뺶虧㒼�䦹㿛랺묾䧙ﬣﺈ㏕蒒顜戟ÿ㓁෾쉿븲혧㱭ᆿ른�씰⃏䮐འ꿜ꢤ瀜꼨猎鍳⢓ꈨ邊⠊肢⠊肢弸蟚䷾ﴧ㪊ﺧ䮒뽙龱髼肟뙟ÿא繩㿔泲ÿ㼑凬㿕鋴쵚賽ÿ퓤Ǽÿﵢﺷ⮀累팃ꈨ첊訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ븂ｹ舀～준블ÿ췑䍟콗�㓹㞝싾�㧺䢫ÿ帎⡪뎢ꈀ⢊ꈀ躊磪浭륤閹蘡⼔鈤唰ͅ鈤z娇�ﰚ猟鴾⍲ự몽䛇繐𪊏亍﹁⃳忯꺓�ㆳⓉ鏤륞毻幼윟ﴋ�﹗폃旳䒢r劷硿晇늑룧圅䗸ᵹ᡻幪ᫎ짮⠊몢⬀⿴৾ﭫ섃ᾗ甖䷛躺ᦿ톷䗖᯦�ꌴఽ벌뉿躀븞﵁纑�捼�碦噕퍅㼣홫ጮ⚏࣑菟飙䖕烷ͺ걟ⓞ糕훝粭퍡⽴�偣᠖䱢∪ý兕嗆癫簴￣Ԁￋࠀ쉗ꉷ㳗ፙꈋ塛ꭤ掟ة侢彁喛糘ꮅ卼뇸碬壟搥꟔ࠦ攷恭陟霸哙鸁⟧㖩퟇੅칞甉儐ᕅְꍾ셿縷缍냂⯸묞媬繹ꕢ�掠귭飱戸㫬糮먟伧꿁嫸ᮟ퐢箵㍟练⤖꡻將쒥ﶹ맍�姊疇ᵆ绅ﺎῐ琑薟य़輵樛姅턿쮭�㝜䐑�㉢౻햞证�簴ﾛԀ닋弻㪃�ﻌ媈核콭⇩퓏싗ꞕ俣樐⯞盱癝껩ⶵ滮澥矢鰤쀎gt夁힕驆֧ԑ儔Ś鴶畩꡿捁潣씥퓍ᒫ옐麻扇ꨂ풁䂒绅ﺻ翇洉຾ᅼ糓줴樛ϗ髭駏偮ꩻက蕺勏✥꿁䧸睼씿癝盓糉⦝彤箖㋢穜针ﺃ꧳ꤜ톯镱葉퀐䕑숕ꈰ⢊ꈀ⢊ꈀ⢊蔃ꣽﻙ缢ꏘ羪ⓩ鮵᧻ÿ꧉ϸ엾濻ý靖䏭ÿ켦Ᏹ엾匝ÿ╉�쿘䷾쁏�됂ÿ得㴰訲갨⣀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⬀鿧◸ﳯ亚ﾛ愀᳽簵￳Ѐﾽ錀퍉紩ÿ骣辴뿪㹐ꊆ⮊ਰꈨ઀㟹૾ﺗ༑놆㏼殶⨾鮈䛶극㏬ކ쫐Ꟁ꯻딧㕽߱醙艇ᏼ碪徯﮹鬾媤춽ꏚ꣮쓮Ǡ郜휻韣࿇欟ጟ⫾ṫ혷诘劍볠�㹄敟ꍀӟ⛵릔쳧䋶⥧ᑅ꩗ꈠ慠︫뜉毰᛾왯힔诵㍏黃搓못뼎촥珆㸌⫣蝝♌�㌕蒚顜挟셿㸻缍꧂⟸ꄖ媫繹䭀䟝콭햦챢㌻쌫ÿ균᤿ﭼ徻媃�笩ۢÿ᭺逘厏ꄟ궯榿褏杺忂�趿ᵵ㶒庤赝Ჳꩽㆊӟ燲䏑픞귢卯⟱꾉䇼�횽ꦣ뷜퓍훯ᵉㆋᡜ㩨ᶕ౉䖡圔₢ᮛ俍뙔瓓槻漮☯ⵈ觠㱷㎲唅�䂒⮨忬⓸ÿ꿁�婼淗椷೺�奆褗ࢯꗹ嘣﷣ҧ镲䪝鲊頜弟졾ÿⰊ໾ᏼ㳓謨樛དྷगÿ긭ො㷸䃕彔ݤ㖩៱ᗼﰯ㼧霕ﻡ瞉䊿賰鞬ᬅ맥﮿㞲貸ㅦ≶쎾뫽ㅾ採꼺疈횝⨺塙퍼퉣㬵㞽ܔ埯볤䧒촬긬⏏暱㥦伬佒屳䩸剮摵┶儔聞랂᡾䝸쓯✍贈Ḅꅶ嶬밭杪皖䗇ౕ權뼊｀龓뼆ﲱ猯篱둝趰ꉫ謤囌聉ఽ뮌﹁黪姏ꡖ솩࿈ﺩ砏䜣燸폰荖�☭䓘긜朚﮷ﮘꊨ䚼矛ե儔Հ儔Հ儔Հ儔᱀ｃ☀︓᷅ｓ䤀갥�ﻏ位῀⿶翛˨뾴Ὢ㛹衿犯ⵉ﹦翆櫲~ÿ纱ￛ䀀꜕뫼臹铩䕑ŦᑅŐᑅŐᑅŐᑅŐᑅŐᑅŐᑅŐᑅŐᑅŐᑅŐ㱟ÿ⿁瓒ﯟ弊꿦ꮡ鿧◸ﳯ亚ﾛ愀᳽ꓕ蝿唯臺㗴儔聙䕑ὰ�섗宭韆峞�훩翎쇩윑죴�ꫨ뗇꘸郝⌟ÿ嫁㈾럽땖㧸��鋅忳�颇쎌䍐펑鴬ퟔ헄쑳뺚꾥苸峻⻖뫤㗔蜫몹䎞䯳넣捦⓵㫕呓ꋠ先ᕅᚠⶴＶ夀곖跴혮ꭋﯫ랄략斌醥⫘Ẩ邤慙翰뻠懻霜뾊함偮읿�笶肁ﺋⷊ襼ÿ鬄㗸꯽㯢貟沦韴䵫損╞⎹䰒丑竐癮问蟴郱ⅼῸ⹳犛蠧堷騟䜢⻯ﴇ剳㼈擞毬엎푍ꖚ鼑缝仁㊾ÿ쇂뿸ÿ昈瞋磦쉿㰲ꌄ靼뵗錥⛜딼㧺㔜쥼㍃ᘳ奢禒訦꟮ࠅꆨᐅ噑䌇鿰髁쓏蠯䟚㒃뜈䬗搄게핋泤੿昨쨾葿⽴ﾆఀ뿴栉淁췴찎⑆薐违퍳씬辝㖩ዼ茏㹮欭鮶ᵵ㍺ꍯ謬㛌빡䙩᥺砙ÿť㴜置勁㊾ÿᏂ뗰Ḿ靨㕻ᛏ싄ꏨ홼᧖죘豁꡺뢓ⓢ嗫쾰㾏佮㊌扼ꥹ컙⟽㨶紤⪌楾攣皽߬ퟮ冎穅訑劌ੂꈨྨ﵇뺔�慼헸ņ堢ﯮ굎荲㷾ჭ첞ᅲ�ﶚ텿⌝둇瓒壋泭悬筋≨䠘䖣ꨊ킣ԀླྀᏼﳗＪ舀앺鞯俢ꨕ幞弇�昌㴘嚈쌬ﴠ廑謏ి❼즮잛ᷞ㗒唘䭚�⡊䂥⫃녊죈휠覓텎೙꣬㪯ÿﮅ䯰諾蒿ཱÿ䜕⿼苟ﱕＡ茀羈꫸憟讞祅ﳗ�徂嗴⇼ÿ袃㾪绡ዼÿ꾢࿡᳼ｃ씀쥑쀾⵺츕�ｕ舀鞍뒊辋�㎇녪⏞왚⚳豶༞층쉿Ｅ䔀쉟蜸ÿꎊ侖Ạ䖋흹⿼苟ﱕＡ茀羈꫸籾２ꈀﰏ쌜ÿ凅㻉竀ᔭ᳟⽸�蝶愙就ḕᣡ節骖蔃ꣽﻙ缢ꏘ羪ⓩ鮵᧻ÿ꧉ϸ엾濻ý靖䏭ÿ켦Ᏹ엾匝ÿ╉�쿘䷾쁏�됂ÿ得㴰訲갨⣀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⠀誢⬀鿧◸ﳯ亚ﾛ愀᳽簵￳Ѐﾽ錀퍉紩ÿ骣辴뿪㹐ꊆ⮊ਰ쏼ÿ颂敼ÿ辅賱埸뭆㳳笗쩨줷睵槒ᬁ�蹘븞ￅ舀粂ὤ㸉伈霞韸臄瓬ꞝ胧η엽荡�쪯䥢✹휤莡飘䕑⬈捭俢�섟ቚ륖礑犅䚰鈹ｖ攀㌐ꔟ㕳⧺ÿꘄ㗸ÿ윈⚀ꟸ媮헭䭼锗겥扁眎䎏+�⍄᫯뗆乕螿᫾㻐簝팷㖼겤究茾⍤酗肂㊊㯲쥴鴻ꦏ뼦뼪㽭펋揼꽿ⱁ�᥶톲氡뚍俪࣯틬尶÷ﲁ븢￁舀粪･萀忄琌봻잺把꠭㜲濍๠㸈嚆缅姝䔽牾㹗鸎ỵ泬ꈨ圐约￈਀㸯簱퍬⠼⊋뇩떟៫）Ⰰၭ餽咉睟ꀇ冀ﾟЀＵ਀媜꾎鏸ǅ甯랇ދ량鬾譕︰냳⯬䔌束』錽嫄螧὾㭼햹䱯渺㳝墹ௗᄌᔦ縑⪀հ㹾籼蟸粫겱�ⱘ檲鼳솳⮻ɫ뇼뿄꣮㴃俎歒Ύ⯸왏㩟ퟪ훠瞃룻睌↾�綫淨탏ℑꘞ䌿ཟ塖尺녻ꊰ⮊䆰䅟셿︹缍폂�ꤞ�鹹△쩵䵜쎜쨌蝙ꡍﷀ廡ꐋ幘驪꺵ꞙ䥛祳㉻流䬄隗恇ꪪ鈻ᕈ狀◻⧼䱏ꓰ᭫⳪檿⻖︓�᮸篰肪缑䇙髜엦隅࿬꽌￈�︛㼒︘Ổ휶큢䧵綠䭞祫츖꽂᠔ᢁ琜ራ욟岿꼨贺摯뗛㿊ꔐퟰ꒍䂓ᇕᘐ武)㩐熒镙珻靸ᇾ�옻鋺닉赋갱섢痧ⳋ笜ↁ蔿䑾ꝗ덂ᚫ拭୍̭뱝䮶䶛儗蚸⮒敇煮ρ逇潪䗸䷼ÿﾭ耀缲㗱׻㗻毸ჾÿ￙섀ᯞﱨ油䭴롥捜췷礘櫶⯮�㮺ဟ畼ﺍ７섀ﰨ䙧벶᫱쟙〪⋛쎊䂮蝒㨽쉗㙖㞷醷姚쯛煱гᢊ뭐ẻ咁佲꾰羷닠◾꣝⟸퇁﹉⮮亝㏡燗ꉘ�碝ﳯ⬓心釰흾ᑚữ瓸欫亝蹑掛ꄱ⓼㎖囸旔䗋ᆻῤ臰蓾჏ÿ껠ﹿꤦṫ錞鴏ꔚ禌﯆⦛弢胍�軚⃩奻档࡙撑꤀獜嚌帟쩿Ἳ窇ꄾꑿ郪婪跅돥₉뚹ꎕ⚖ᤝ䡙ﬠﶊｐ舀ﱹ핞⹾੼忻欓ᖺ폙껯 Ý䃌ዠ莭僪㎞ﲊ㻛玁鏱矅ᔞᢊ㦴쭵펶ဒ戄쳜廾㫀�癠꼘﾿뺑밖뿑絧쑇鄗殴ⷢҵ䕢㞈⃣羔毀敜⮝솽僻ÿ돉䓼ÿ䞱ｔ툀歉Ｓ錀ﴇ﫟관�ﺇ齍⟢諽Ꜻ鋾奋놿ﲟ龚㾀忬ﾶ퀀礅ÿ㏦⣓誢ˌ⢊ʠ⢊ʠ⢊ʠ⢊ʠ⢊ʠ⢊ʠ⢊ʠ⢊ʠ⢊ʠ⢊ʠ禾ÿ庂ÿ꓉뿩ᓶﾾ턀忍坃㿏䯰履鴴︷韂﫟ꬹｈ฀ꭞϵ櫨ﺆ�웆�랷趶骥ᡙ옪㊊쓌ô猂坓翈嗰貟碌ἆ骅�埝뇄驹䚣㓟‖懣㋴⎰헽繰ꗰ魎▩ܔￇ똀앇龻羌ᄟ銤ḍ﷔䖏늁물❔䜌牦齋�ר嵹圔ᢹ꒨↑ᑅ䤀ᧀ頦ꤞ᯻⏼亿�⃇�ꤵ⏗뛋㉂⑧俜歀矵髆蟷Ế㥼ힾ㏵蘝ᏻⰣᑪ栤墸竑ﱤꪪ鈺礅ﰿ�䧸䋰㔉彋쐯⎞紉溫鹟輑寝踕ﯝ빢ｼ舀ﲳﭥ땾䅷춻麶秉㒯쑭ᆓꂘ瞊펑鴬볖跊⯢굲匾��앯挭�翛⃒ַ雛⇞燄눯喠웷鍺굜圔銤졊䕁朕퍃檍䣓멤뾾⶝惭斌醥⫘Ẩ邤脩ߴᏼﳗＬ贀얺馧뿡눉�徇㧣྆镱쌮풦﯁뿂罃ｨ褀杚忂廙趿ⶵ㶒宜洬놙꯶蜨ᙼ蚢꨽잮巁숯⼹纕꫓ꃜÿ讏η泌Ϸᜁ铽﹇眊韱᛾씏둂뽛쌳ჾᬥ뫤鸬㇡迥醣埃ﺙ寱࿉ᘿ穫覟䵼碨媃箻䞭륔魻�銬ᘻ돚ꋨㆽᐅ䕗韰竁쓇蠿㿚㒃뜘櫟䯷ㄊ堙ꮗ�ᓾ챐鑽�ꤏﾓ؀랿嵼嵯�浮斴碑쾯ܨ趨͛ꟽ뤦ÿ庅턎ι㯼㳒ꀛ﫩꨽ề쵇㛒褿돘瘟퀵襗ꍚ㚩૊ꈨβ俤⳸褧덿৾矸뛉潍㍙쾸諟㏞羸珟罄弁簊ﳗ㼦㰚ṣ晭�蹡㒑ꀟ읍꿰羢꿠◞틾笠⥪䔷梡﮹侓㌣﬏⇡찵ÿⳁ㕼뷽姻櫘ḏ볨꘻櫝鄍䫆ឈ쳱迠떧둺睿뢇龺綨ꈨ㒛ᒉⰭꦮ樜饙ʎ풁纆ｗ섀籍ｋऀ깵鋀蝯뙂펶㤢뛩⌱슏摉蔟뽹쿀ẋ촋셫阗韖횷旟妚ይ읬㚸᳐爜碪ᗴ쑓觯↾䳱랅婫춭㷯銄膳˸摟엾ÿ䞲翃很횳᭏ꭃꖶ즫蠼꼭ꕼ噘赖崾꺧�懴쑞થ鉔쒖㶞ÿ댍䇻큿ꛋÿ黠￟褀厮蟢㟭믱��뼮篣펅ᑮᚶ嫱ꨬꭺ閘鑙⫴݉뻒￠蘀１㸀⇞ÿ꧁ÿ毢ￂ渀�숃೟ᒾ籝댮鮩⹽坨퍐⧵弒妒┖鵸䡕�괲芜䙎爰垧媒೺쿱꿘훠桢笴牻紤焿�ຊ�㚂ݴ┧玔躴藯巴쌯ᶾ킱䭴갨�堘冣΅ᷰ♏኿㮼ᘺ施榭爷彚焉㱫൧蠔闁킇征麶퐑坟껰ꮙᝉ僶㓜ꀋ㽢혌ꜫŽ꼜䏭ÿ켦Ᏹ엾匝ÿ╉�쿘䷾쁏�됂檿蘭缶龈⣶鿪䧺昭웾繪＀넀�ÿᕀￋ⸀掾㈽⢊사ꈨꈨꈨꈨꈨꈨꈨꈨꈨꈨ髼魎ÿ䭡﷯픜㗴ÿ봄ÿ䦓翓⧬ｽꌀ뒚傿ꜽ柢璋ɿݸ뽾錿梧귶㭱및쓌ᴨǋ蹟ᥟ猼ﲬ겛흸籝櫞⛗ⱟ嘶윈쐑֢ꪯ龬缙粵浉菰뭁黍쮒깷洼韄昤丸萺롓鮎瞘붾ᴌ堮㷳飘䕑�꼠㾥駠۟ﱣ彤鸶蝧≼珩甠⻹类ៃҸ潯健穸�竃ꍆ잂텃⓭풻⬵뚔芵阱䞖ꩠ꽈忘韙軡鏞믠⸟᮵ᢔ嗻胓鍤᧗껂⩺로벪느胝뒟엷㬍࿡鷁왛빷靜ꜰꚑ㧛ÿꮏҷ齆艌軍겊坻�떈䝭흝痯庽䯪ﶻ滮邧ꗥ�ㆳ鋺朩忆姸᤿쎛㔚駟�묈䋛빑ꭋ絩Ј匄૏רּᡵ屚뮐胝䕑퐕弁罧⛁෾歿髸뷾魩ℭퟚ䥃褗䡮鏄꜈㽨揞⯝濥뺃혇⑾䱼ﳑꀕ嫍䓤긜і﮷脨ﮘﴊΝ쿡巃쌷䠺쾎큈葬傰䄕⬯䲷릓齃殒ត陗ꬼ㑶蝹釱ၾ࿼鞹륍従揝ꢣ㐿䝌⻯ﴇ即羐좼ᨺ鿼晦챢駅䦎鈧뿖佭펋揼깿ⳁ�繺둬孈ଠ❵蓷楶⸛聻罕垄횒窘칞氞䕁圔Հ虾셿縨缍㿂믠讏�쑋頑甴禑첆촷ܠ醡辗僶쌑連睏迱滣뉠霮﬑덞齰웲ࣕǜ컬ꉊ냻Ľ힯⺭폊퍍௫Ⳮ壡皉冤નꎪ°訁웡뉕巤譆儔祅ણ갨ᾏ끫彸뫀觗煮痺⢶쿙듨ݮ럤ꧭ忢䯸橿Ჯ餧姲샂勰௜⍵裘ﲁÿ⏸虏榶㙾賱ﾑ관�띌瑼᫚䝙㿾੟屟秏㕻쳝䦆⒮⑩핳躙㽉㖉鯺ÿ쬄ퟰ⏼늿茮윻쿥岮౳�贡儜욟䲽륗靇⏤翎꽫２숀ﬣ巟㱙⊹曑ނ�憖웤ᚹ᪽嚾ÿ릂靸⟻燶勼形欐⍱约ヴ䪫ཱ廧᡽哳杈엦쩾ർཏ㯸쿠粅甬㖝툤歴楫�襅鍃勏进忣璍ꭗ轞䦵쑞랟縷꒽㔍裗飴兣禖ꌯ͕雜覯�徴ﲄ席愍멧䊝藛先዇뉘෤撀熒߱टࡾ剼鏸䖩ٟ只⍃휀ჷᚴྑ饖廀伒歠愨䵡䧳㏬耏ή�ԯ텩ᶻὅⷪ�Ꜭ僙ᴸ꽈쯙≘떶�ᄄૅ贄䔇ぐ⥞᣻컾ὺ쿀촍⵱竄誧㢵逺⑌鱩ჹ젃ႌ✉ₖ谓弅깯䵌剥汚炆떿ﰏ㾛俄ᓻ併⓽뎖捿錄㼵缀뿘ｭꀀ툊ꣽﻙ缢ꏘ羪ⓩ鮵᧻ÿ꧉ϸ엾濻ý彖ߦ冦ᕅ֘儔Հ儔Հ儔Հ儔Հ儔Հ儔Հ儔Հ儔Հ儔Հ儔Հÿ봄ÿ䦓翓⧬ｽꌀ뺚꾆羞韠㩩ﵯ⾅噳ﺑ봜묇桜⑚㓳棓糺䢒鷛헞ㄋ⓵榎ﹿ媀﹯䜂ᗾ䖥癧漆⏼ιÿᚠﾛ耀ﾑ蔀ﹿ媀﹯䜂ᗾ䖥뀻嬨驨봵쿂ꑯ䕘ᰪ잫詬緊ᲈ突ꐨ椆禀Ḻﾛ耀ﾑ蔀ﹿ媀﹯䜂ᗾ䖥뀻缳ᷡ￰ﴀ됀ﳟ輄⣼ÿ瞄ￃ팂㼒귰⠪ʻ躕꒑峙敺벝욘그ᯕ餞괂ᫍፋ⩅옫嗪蚕̓ᇔ叜꒨漆⏼ιÿᚠﾛ耀ﾑ蔀ﹿ媀﹯䜂ᗾ䖥뀻缳ᷡ￰ﴀ됀ﳟ輄⣼ÿ瞄ￃ팂㼒귰⠪ʻ龮ೖ揍歡칬옰唘་๼핪刔ꈀ⢊ꘀᑏ䉓췐䤚耜ꎫ⪨톧᥀ﹿ媀﹯䜂ᗾ�ꀨ憅⒂㢎ᇆ䈑辪݀絊浕佃뾰⼊涬蓮�褦湟訣䖳昀ÿ㯂￡切椁Ἁ凸ÿﾇꘅÿⓠ呚뭓贂趮媤Ⓢ튶ꆬ텱랣⍅˱冯⁅⠊肢弸蟚䷾ﴧ㪊ﺧ䮒뽙龱髼肟뙟ÿא繩㿔泲ÿ㼑凬㿕鋴쵚賽ÿ퓤Ǽÿﵢﺷ⮀累팃ꈨ첊訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ訂ꀨ븂덳诽ᐾ썙�黫똷熋⹯猍艢低㄁䙟啑쨙〻砾ÿ㚆柸ÿ㽃뾏ꇰﰿὅ웰೟ÿ柨ᓾＧ蠀ꆯꫨ헶脻쟳ㇼ쎷憎ﰙｽ蔀）Ｈ蘀ｧ䌀輿㾡䗼ཽṅꟚ㹰ｸ蘀ｧ䌀輿㾡䗼�，ﻷ✔ÿ꾈�켇�，ﻷ✔ÿꎈ᣾ﶟ︌＾숀ﾄᐽ橻삝᣾ﶟ︌＾숀ﾄ缔ᯃ㍼ÿ龡�僸ﺟ븢ꊇ涏롓㰟썿簛Ｓꄀ잟齐⋾潣羆㏴ﯸÿጊÿ埄瞪潣羆㏴ﯸÿጊÿ凄ÿ洌쿰蛾὿罂諸Ỻ㶊亵糠￱ఀﻏ羆缟䋡㾊跡ᦾÿ쿐⣼ｏᄀ䍟䟑ꦶ࿜㾞跡ᦾÿ쿐⣼ｏᄀﱇ뜱㿃᧺緼ÿঅÿ⯢竨㯕ﳇ뜱㿃᧺緼ÿঅÿ⣢ÿ㚆柸ÿ㽃뾏ꇰﰿ絅䔏�炧砾ÿ㚆柸ÿ㽃뾏ꇰﰿὅ웰೟ÿ柨ᓾＧ蠀ꆯꏨ哛߮῏웰೟ÿ柨ᓾＧ蠀ﺣ�鿡೽㻾ÿ蓂ÿᗱ㷴笔鵪燎ﻣ�鿡೽㻾ÿ蓂ÿᓱ썿簛Ｓꄀ잟齐⋾螾辢卭Ᾰ缼ᯃ㍼ÿ龡�僸ﺟ輢揸虯￻਀３쐀큗凴ꫭͷ迧揸虯￻਀３쐀ｑఀﻏ羆缟䋡慠訞딽ÿ洌쿰蛾὿罂諸뺍９퀀ﳯ伨ÿ弑텃뙇�鴏㽮ὣ펅ᴯ᳉喊쫲䛊 ₧蜏᡾㳓⭝竂鰱﫩ꈽ󦬙魼怔⁮鼌뛂ꖨ鈪訂꠨ꈀ⢊ꈀ⢊ꈀ⢊ꈀ⢊ꈀ⢊ꈀ⢊ꈀ⢊ꈀ⢊ꈀ⢊ꈀ⢊꼀留ʾ�曦갫鍸捩힭ﶧÿ튯⬊畚㮝Ǚﯸῡﰑ쐷罛栃㷾擱�䕚�鴤锁酳꒽㸊꼸뺢ﰅﴗ璮豯ᛞ볕꩗器앚�䶒㐺​ᨮ㠿ᯯ論獰㝞⯻ÿﻉ㽨㓶ￜ㤀뭲㔱ᩜⵉ酐ῢ僰袟ﳳﴷ疙뵻䵋婟퉴遡醤馼㨲쑊Ⴒꏃ꽭�羀㰞谯᫞۱ቿᩪ땍翼뙯햼驧洩题◥蠝ᕢ躘怸註鿵⯸辇쐟᨟辴횇㐒碐챦煉爚毣쁭䓪ⱂ빿俕ﻶỸඟા⳼淕锭뀥㿓疱冗뫁흭㋗휽ᛠ࢝㓆᧣搭�떟覆⿣縕ﻎ턠᯾仜⊞䮽ꝣ楋⵼譟鶘췊䊹㗦踣쑟蔟뗟ÿ벂ꠙꭸ组긵ꖗ䱝㊾૳䀮헎鎜᷉紅ﾧЀﳷ༬矙ퟃ쵳Ⱊ䡧즿�਀麄ꋥㄱ갾�ÿ蜦쿣׻ÿ䓭窮╕繎�ﱀ༡ᷭ珱뽒货唼侨슦岳麬鈩訍Ç䧦㱀튃몾苽ᨾ탾୾鷸ᜟ赫紦ꄝ宵჏邏パС뒍埭뇹�뎼ࣾￓ─옋똋ÿ귑ꁟꙕꬪ灒塉젏য蝸蟣ﺏＮ숀ḯ꫸哣⻔ᛮ�䞼⠼끼ヲ틜᠅潄뷊偃᯸泻干놮ꧢઌ敟趷䨷콱ꋊ鍼㧬ꬽￊ昀ế뽨뼌윷∞㍍뵊㎾鲭㊟꩝ꃌ틼焯毆�฻ⲟ㪖謗꺮伕க셙묚ն잌贈�ꦫ┙�ꜧ㗭鯣讏鼶㸌欣稗ꛍ쾰贅ꃦ껅䥕餟뛕쎕虤젫꼙㿳϶篸翢㾊㲵ᑿ튥폞퉀秵寵냋䎤零ᅯ礿몃ޒ᱅⃣툟筝뉒듑�剣悝펳ꓭ릹몕ᩇ昩騀엤⩆몧㹒，舀粧ꜭ淆쀯ພ⻱ꖫ蜮╢㿔⾳띤湩쌧㼪䆖녭撬﹧᩺ￚ舀ﱎ흟쾵砖삓ⵞᛱꮣ獏马首ꌮ颺짎嚣佲ݠ᣷ퟺﺏ益뼷㼞桯厼䊫䇒ꧽ蠷冯憾儔㹣Ცề⬽娿㽩ཧ﫛衋ꂕ瓓၏꩹㪪럩┃깇頠�鶺⹻뢶햏⥊즰퀜놬밺⡲畤హ‏�ꭓ᧋述ᗼ욫⽞쿰�嬊濸嫅连兀輼稬ꍾ먭�ᥱ豠㠁毮糏萿쿴栒◾ᓱ盚枯趜㋣Α⪡졦냊㽝᛼﹏띊ﾃ⼋迾᜵�웛쇯ಟ㿼ӡ懸㫨뙕⺞롎颼㶖系랃猻鲌ꥧ䪯縊㳆㚉脣볖ﭹ繒绎넼얋₾斒햲⿵⯭�懃呂緝튎㊮焺ꕟࠟ弼藯࿺梡혡ﲮ㦖댰��箆뿢缯佩�쌏귩ꏃ埸녎洭敪䦖똢姳쭷脴ᅋ⟲쁄팋꾩쿓뺁팚ᴼ篰廃턘Ⳕ�ᠮ붡芌掗♠⁕螑뀤⏁눆⯅ⵂ䢫꽓랉྿ÿ瓓丽쏢�歏許慨኏≍進䑇轃ᵟ읾ᶿ洼쿡㯚Ꮓ꯸髆ꇾ�话ᴵ楒ᆡ㛎蔬衝ᤛ꟨뫖眩澋⌾훾︖턆뤉эꍃ䋚⊇쥋媙筌磮㻣퓱ནൿή樂Ⱊ氡큥툢鄧ᬗⷮ圕濌鷶縝ර䙭谱└꺼繥ｱ섀뱎ྏ푾椳ߚ벌ꕁ赙픢뗅ꦎᄴ⇮皲ƣ機짾㸾ሟÿ轧䦮쮼곙뺅玠�ﵢꓜ滺ⱥ頽셗콕㯹Ｙ朋黼슰헆悚꫏羚ꘚ鯸釰㗼ᯢ맷㟱䊅㳅좳孚友⪟佢쌬᠅狲䦪ퟋ羜巁嵼뿢欌ў൏齸텙ﳞ㓎䋭煛嘩ᮃザ賝果䶦杹淄唳都沿࿫䲰ᣞ觔뚹侉ᘗ递딧枴뇻睝ᗼ図뗓ﻨ欘䕺矔ᩖ鶎獻㱫㞖㏻༫⊨趴טּ쥸쁬쿵砟쒋０섀ᳱấ粲ꜷ痊밤嶐椗ೡ棞눻⁁岓ﲗᜒ黅ﰿ⼬䧸䭼殬政쯾㿻跶럼丞뛯�躽ޮ涥䓼ÿ䒔ￛ�ꚯÿ䓩숟访⡾秸ﻅ�鍢㿆蹤僯좍ᢚጡ軮紼ﻒ୾ŵᵈੲ若컩笫ÿᾐ网䇁樿쮻劭虯ट榵壢ᄦ�鿖天鐥럷縀꿳㿞봻쌏䲺㩾뇸￢ጀ歟넷읦빃訥㛂縟�槈㾈豴＠欀ﰧ園㿂딍裯ꘚ꾱⻈巼薢䢟礐씱毀ﺔ諼ໄ쥇憕䆒텟츪閼붢㩀쟣⭞跢썣㜾෱讆侇侃柕ᆆᙯ䜢谈�㤔珷ꅟ띟輧ÿ峡쳾▾ꃖ쪟⿔ｭ대ᬎ鿏뤩텽뼋˼㖾ÿ窂ᇼ쉏調괚닭庳⵩寥뚣뿠਽瘼ꗇ㈼⊌䯪᧐䟵ᏼ흍忄뛙櫌蓺뫗蟗撮꿓뢦범Ƴ엳ጣ玒ꨛ픨뗯뗹ÿ鼄퓱ᖾꃽﲯꠏ䌻䚫抉靿�껧䨽ﶊ갥ぱ꣤෻ᐅ塑儀ᑅ儀ᑅ儀ᑅ儀ᑅ儀ᑅ儀ᑅ儀ᑅ儀ᑅ儀ᑅ儀ᑅ儀ᑅ更קּＫ준棾�ÿ欹㿵髄躭﷛卯䎘ꙥ짚畵욑�¿簍�䵫迸碨쎋椳窶럌ӏ尓쨙簹ᨀ뤠蟹拱躾꯽៼龈甃֏㍸퍑﮴柭苋魫⓹孄¤ㆢ舥웭蘱䫄鰓螺㙧袏ṿྵ䍻횿嚵鋖틖꿁㭌౦趙덕ጚ谱혃㮽⿣뾎ẉ렄ퟰ㲎굋ꐡ襋ﰇ켡贉㮣螃䅘獜麓힄㿖㾰헬ﲬ븍ᛱ依푉䵵㡚국也ᥩ腠㍋嶂枛ﱁ븂悓莌᫔ꛒਪ끓ﱘ￲舀ﯻ릆糲䄋摹羬ṕᎭ㼱죵홗띿ﱷᾚ㾏៬ÿኵ窾述旬⯱῁喴辯ᶼ忢쌋놽骵蕻䎆韻৛頀䎉躃絍ﭑ硉儳蟸㟰黄툊洮꽭鮵∿渉蒙�芊셱෨婧畐㢣삾歼ÿ椄ÿ薒濣׻翛훨킯浪ﴇ벛씳℞ﳔ걏矨櫱燶ੁ닩쳌꺌陘᫟荱㗛襧閒홖䟃鿤闬⿡砏퇇⯼뷢电Ἕ빐ឿ괶옫�煯ﰢ䏈㈌閎執뾍佣몀薗귯鼴븆羓묥宋淛ঞ鴶떭旤ᱬ䅰㎯駽ÿὤ㾈缎赩넶ῢ對뫩쵽닜楁ቶ㓁聫⫑᧤㰗۴캾熭�芖〿�픧罴돚큏渭寥ဏ巙祁롯狹酹೜ݸನ맃ꮯÿ꣠㾞ÿ㮄曶톺札꣙멸瓥싘颟㹀�嗨ὂ촫板�쉷�䔓袷✼Ꝺ矩㞷⬗�轊怓㡹⏞邐贳珀殎ﶱ뾻ὧ龉㸝椠嘆蠟㤼ꉣ홨ᬆ歫ᤒ쮝⅋ጉ送帢솿剕䩝Ǻ鿱포ﲭ�靸㟡떅被棵듅᳞凝⢉掮㹠롮ۮ噺ꠧ拼滱޽ﺌ坫릱剨㯂뷛됅봋㏕喱֛Խ꥾콾־솧๿Ṹ訧텇囬餻칢柉뱬많쏁칈祆곁�ﱛꤙ㉸ퟖ祒릡껓띮偹ᯍ隃৚ꄀ碑塓﮸싼߆ᏼ쟗ﺟ绋鸟뱹䏍卂�胮ᤁ뤧頰㺉힤ힶ翍㾰俀뾈䎼睭푀紴㡪躤㸭驩깈␣썮ꏆ踌㥁嗎꽸⮥랒됯뭼ﰌ￶舀￉준ﵿ斁ÿꮾ飽⇼诠�삿㜷ឞﳰᏗ彸祎鞥蕏�䛛扉⑗麓祍ﯭ砵趏ⴴ썣혚憅霎붧쮴䮩댲週垶汤茱ᗟ�讟ＳȀ뼮엸❵瑎ឣ㐫䜣૾ꏍ⹼㗒୯蒯璬Ὃ䠒﹧蟓蹊줸Ҁ�轤�涷搤�ᡀ࿷菘叆䟸৾淫ΰ댒ꚽ殁侨촷ㄬ♍ӄ룺뼨꾀ｳЀ훵뚿鞠黇팻俓쎍潍䖣鈤뷌䧔꠪社濭綥ﬕ籔휜旼㣻糚㹡ꂍ濋줔⑻ᢩ蒴塮拗ⰹ塤⟉펮䦒劥若佣漢߮꟦뷃꽎燱秼෡创㳗楉㚨⒭骖彛獹隻廳갰菉搤앵❺�︘�簒ﴏ숟℞䞗탾㼳麄寘䜔䘆抑君㘫煲侎תּﴉ떟脯ᙾ鏗埄淺뗾�嫆㵭ꎝ硋멜�谧�混쩖勗囨孫廈蹮ઌ龲ॢ唕儱퉓뜷념ᇼ쟗韘῅긌ﯦ痁㦝씶Ἰù章꼱Ｎ舀羮�ￏ怀㽛忬잳篬俱信ǭ俣埱➆瓓ퟫꅙ팄룙畤�뇥朠耛뷧﹬뿚澲㺏簱鍮细휞㦼摧糺숖狼妧♷鳬䰤젱䷯Ꙕꌧ穀㽾後渁쬴ᔸ䆼Ꞥ듛㭉閙桾㝽❬ퟮ粋깥ừ苷践࿍Ꚅ宼⸣酄㐛Ḥ庁⌶캿慇땟ꤐ先唏๐�휥睼韱쎇柽퉀뗬岜�ཪᐲⒺ賹岞੮຿䅲췜ᗛ᚞掴쿮晠쓷累䵄ﶿ慠﹯䆔⥞ÿ넄䧸翠㺉Ꞗ䷣㔡큥淭❭蜹⣽⭜쯈闝Ţ繎쑒૵홇⩞㏸㷢講고阚몖竜ꔵ뮉鍷믬離挷鮐䋰簜情셿뼿콧ﰖ（萀ﺷ贒䕟ﺿﯟ�ÿ撳뚕㽹�첿ㆍ㦟豱㷴唨ꕒ鸴膭俱꿆砆ﵙ궥듮줻沑ﯧ蝷ᛵ陟�ಒ捲退踉✹슀䪿板訿᝚࿆皅ㄞ�퍆⨏쳾릲㝐�艌甏笪㟖短忰澦丏�᛫湬洴䕂뇮卵㹮͖踽儉㍞᣻컾᨟ھ䣼䙭ᑟ勸쏻骺딈㪍꬛튝鴁욒ယ쐼Ȥซ࠲吪媅쥩죻㠏ÿ슂ｸ㗞毃錎畮셓岞䪬홽挵雴쟠美��蜅练襯琭㖏僮쉿ᨙቌ�嬒ᠣ笅软掿袏㻾ꗽﺮ쒿ᢞ䞗뗔뫔뒻箊龆⫬ᛪ찅䬡儈鍓誌懻ੀ᠀ꀃ丕↴ぎ㍾ᩪ躷ᇼ뛱웗₾濑澴윑⺪₸낼⍫餣薌䖄ᅗ޳̘젘諭製滰憹濢椉⍾ꓒⳳ筵꼨鬭㧖㨐�圄뿏잷헬ﲬ푲㬼卛瓒俭詉歫풧䕞ꅙ걢ᒀ㥆輺㗣�ᾲ粁魮迠湚瞡쮤瘬᪷鉼ᬺ浶골ᑝ勮룎㛆⯒藔䙈灋㨽⢊䆮ᒅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ遗헾娷륋๟醭ᛒ�ﮏ㡂퓾㷙趈纙䂫뼞硅슷衏ᕿ枼鯲ฯ趮祯㒥஧᣶롥灃浇⓬饾埚믚ट叼㗐䧍鬬홎뚴놹ﭻ퐗볬뾔䂷䤋줉ώ섩쇁᠇ຠ髢諎곪᧪錧꿴댮诡潫䎲摷훗멊㝗ꥰ볃㙿봰汉䈏㍲ᮯ�얇蚯ꞙ�략㷶ꟾ浯桡롤㑱왱ꆤ⸠簁䂒黭쫶蔫ᘿ⽼蘧�쩚初緺䭋⩍쳚Ⲟ뇹覘䨛陠䀬ᰃ㏲휝쿅䌌㯡獍髬跄ꭷᲝ텩Ꮩᕹೠ⽌砖띡㶱굇眀囔�패ﲬ�혬멣땢嗻矄泱�鱱Ⱥ�賬鲜�趶煷딭菎䷢ዬ򇿚ꙩ甹挈漙ؠ頻뼂쌡㡲ຠ姭衙ऌ졓ꔇ礭ᵱ�ᧃ䥼鏽歷殫덗ꡏ州兂즯䦖産ﰤꧨ倨賃ᶆ캫ὴ樓윺쯄Ꮯꋸ엯옇꫒兩㯍௩옶啩钇栓䅾Ⓢ驣切誊鿳簕薦ꤦ﨤뵾ꝵ돨宛勭俓娲灃ర䰦鮏ୱÓঐ츕큾㒾늳뿰㾎溳䈼闚趦ꝭ淍촐뎭襝爌狠芯魕좷鄺Ṁ땇㩘軡켁꽎涜쉗셛ᔞ솗뷚視﷡洒듮軶礻쟜馋㽁崨鞏ᠽꧣໞꟸ￡ᄀ홫携縺抵砵鮤멈놿섰ꊩ찍污纒魟૦㮀⮊㓌褏᯾킱更鏓廅錠틄�쉙ᜠ⤗찊鉃ㄲ錚内랓ؘﲴ썫Ṛ箱㵧놞歳쮤娜ꖮ摫둤鷓䋰流 録㚴賜胢쨻켫槼菱㻃휚㶵홏躮᲋㙗㹖ᙬ쪑踲믯貁嗢范�榫ਟ䕼솬䜱톴柮䒆ၬ⛂䄪컵̨ꊢ禾鳽䱼矚⺉ꆎ鷢㾋䄈ꭿ蠧钧벸ᤄ띦繉⑿뢒ᗏ�ꂻṫ턤䇴욊忣﨎�왩䢣跌똢믯δ࿎볌㶀騂辎掻涫永᫺㳠쎇┞㓗㫍쏊虛昽汮孶쥜戈꿨貀豳豱⋧꾹뿙鉶빋ꚡ굛ᄏ穪놜䛚氝㟡ᨍ㯉Ȓ⌂䄁梀�꾨翙鹼ꍿ幘寜ꄶ嗢羖嘢㩏愘䞒셆俥郋㡸먔옏ట�됢㗬풾팥갉�獉Ⓠ짝ऻఄ荻䂑茞硅쏟豿꜖⯢瀝�盨䯃ⷛ鿂㮖쁨阮읔瀩쭏鎑㑝សㅼ萇畯믛才䋭㸽䷳쾚뀗⇏詝ѣ�ဘ達䱇ꃴ﨎埝ꞓ鴵잵㲆㕔꼹䵓㑝頛跡㏊믈菰䚂⍏젝씆엷ൿ毇㺣枙殬ᩗ蟥藶麭抗鵥롭닌 舢佲㐃�幑赏�צּ뛁뻅뜖뾴䤲ꩆ蛜띣ᬝ윊垌流Ᏹ嫃ᩔḷ픡㖮ဟ塜Ή㒟슓䠂ꢖа뀫墶㊀⍉ꀸ䘏뢢븩ཚ�勇놵濓낣펽늦ᄪ奌⇧ցщ콴塊⵾揸ᇾ寭빔햵欴瓮믻뜢㑭ᢠ⎑睒గİ㮀䃂㐙�͝ڣ᱖爐礍詯⭾㩩蒗愼䎦幚꒭滸﫦絫콊棈䛁ᥔ䇜䠬ᤣ䖐㽶ÿ꿬ﺄ팙嵫혞ἷ࣭㾗梮ꌃ誢(誢(誢(誢(誢(誢(誢(誢(誢(誢(誢(➯绕⸌侪樌줚䙭忳晭勷ಅ厒␙٦읨餾諣諵̨ﳏ쎺흕৵㑭ﾫࠀÿ㧂㣶쌢ꉂ摆宑露၃㬆㝗㿠劂囨㱩ᴳ槓椓㟶皚킊Ṍ쩈ꉽ㉖嬶Wퟤ冲Ṁ歧껰�鿬홧彣碰밝洳玛䫲珛�靟庯걪ି叼Ớᑟ훩᚞䂃�귩匴뚪郧釭鉊ᅂ햃졹僔谇菸㳠빗툛ﬗ읎홒�멐嚗㊰櫚崳昐૟锺吙딫�㧟龭ﰌ䴦㼪ꨊ槜⺐ꪇ꫏썞ꝡ黽꤫᚞㚉悷㈪⑉魞E籡ꞽ㲍꤇廸槺蜠荒㋋患⭃�ꨌ�정엻뻚ẹÿ椕韷庚疗ꑣ荽桎㤒䀧熏㈨昱༠炕떣嵺Ĕ䃫ୟݸ쳚︦냊햆஥䪴胈윖遬㵎觫鿰毂ྟ寇疉ڽ넅ꠉ屛͋ÿ锒鴤玥殎⣔ྠ숇ሏ棝콺㒅ÿ夘塣寕鉑州봰料㱸⃑ଛ䄂믛캠鴳ᕿ⭼횸쥓욬얃똚瞝ﬨ㸹ᙜ嚞ﬢ雜쿲댽뷒訮轵䜁碫峯㗗��蟏䍗힦㊊㏒粰㻵ꝧ긘셿꒮㊗銧쫂筛쬋ᐽ盃㋲፬⅍蚑ꗠࢁ㬀殎ྠ휝ാफ़꿰䆼�磻䷇뙯㋁朸�違⽬ᖌ蹬黼ᝌÿ甐昭엵뎎띾䎷퉓씍ߜ蘣く휮﯁益㣮暯肢쬼῅┊듕᱿♙ᒱ鬛᱂鍛棶堠䞐�嘶ᤶᯣꮽﲙ四뷰쥘�˹ꏡ⏞蘛偾硆甄巯ᐥ咇�翾砜㶮孆ઍᙍ㓉㳽읚ᑧᚄᙼ岕븃델ﲡ荮碭얏痚ﳯ瘣㘗ᆖ楚٭塚抄♧쭆牠܆㊦퍫ꃨ㘏鿰�䡴ͼ樒죑ા뮶὆⁧䵝嬼輷猃玜햝싏齛㪇鶅闆ⲯ�陵삻彶걎㯆ﺈ��ㄌꍞEﹲ骤쒿யꃸ곞硱潭�禌㰳곱띡赧㞠鵣컕卸峡仺᥻飵៮矂埗ⓗ镛擻঳䝰槭씹嵺Ĕ嫤쇗꠱⿼糓㸻枧ꡱ髩頻麰죪毉⏋爴룅ꔒ୤삐䇥锞謶瓰䭿宴䮼걭跞䰯遌⥮꤂硲ᴤ䧌엫뵺Ĕ삋㫷辗漵윒잩霌ᣞቭ㏖㸉㑃獒ⳏ熜竷ූ슟篽뱁ﻰጟ奙槟Პ䂇㞼禺⮞ꎈ萻ꆨꯔⲇ䥰⌇㤽⫵̨糌彁ﴄ嶫왋곰跺쯍鿽뵩὾糯粻᷏ପ萿꛺ꆙ㝨䜚궈蜟᯵�➯㊳屛굽짜鄜ඇ겍炃艬꫇䃑夞숟䉭ퟩ홑䍼혍箯篢猭陕䌫㈜능軭㓞䫜ƨ晾鰤퐜₾凸ꡳ릮ᙹ뚾귺觷㫭틛䯖䑴⒉�숸禶砟獺퓩ݐয়俼媯빸ၿ뉸淆앋洺芵歉㒧�ᭅ㪳馪뀘�珎ꂟꣵ䡣䡡嶣᪩傅ĻꟀ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑ᐅ䁑？Ù', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'4ee985ab-167c-4598-c3dc-08dc467dd0c2', N'dfr', CAST(N'2024-03-17T13:28:00.0000000' AS DateTime2), N'dcf', N'cvf', 1, CAST(N'2024-03-17T13:30:56.9292381' AS DateTime2), N'System.IO.MemoryStream', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'5a735266-6b39-4b8b-6faf-08dc4682b01f', N'xcdf', CAST(N'2024-03-17T14:03:00.0000000' AS DateTime2), N'cvfg', N'vfgb', 0, NULL, N'System.IO.MemoryStream', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'3a760a05-226a-4c16-5d4f-08dc468e681c', N'Prijekt 357', CAST(N'2024-03-17T15:27:00.0000000' AS DateTime2), N'ou’ve probably heard of Lorem Ipsum before – it’s the most-used dummy text excerpt out there. People use it because it has a fairly normal distribution of letters and words (making it look like normal English), but it’s also Latin, which means your average reader won’t get distracted by trying to read it. It’s perfect for showcasing design work as it should look when fleshed out with text, because it allows viewers to focus on the design work itself, instead of the text. It’s also a great way to showcase the functionality of programs like word processors, font types, and more.', N'ou’ve probably heard of Lorem Ipsum before – it’s the most-used dummy text excerpt out there. People use it because it has a fairly normal distribution of letters and words (making it look like normal English), but it’s also Latin, which means your average reader won’t get distracted by trying to read it. It’s perfect for showcasing design work as it should look when fleshed out with text, because it allows viewers to focus on the design work itself, instead of the text. It’s also a great way to showcase the functionality of programs like word processors, font types, and more.', 0, NULL, N'/uploads/d16c132c-1ef0-490f-a232-3a312c36ba97.png', NULL, NULL)
INSERT [dbo].[TaskManagerModels] ([Id], [Title], [ReleaseDate], [Task], [Notes], [IsDeleted], [DeletedAt], [FilePath], [FileData], [FileContentType]) VALUES (N'4d2b6bec-9319-4e7a-43eb-08dc471f39b7', N'cvfg', CAST(N'2024-03-18T08:44:00.0000000' AS DateTime2), N'cvf', N'vfcd', 0, NULL, N'/uploads/e7948eeb-1e69-4dfa-91c6-b406f0007fd4.webp', NULL, NULL)
GO
ALTER DATABASE [Task_Manager] SET  READ_WRITE 
GO
