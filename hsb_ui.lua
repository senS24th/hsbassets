local hsb_ui = {}
hsb_ui.__index = hsb_ui

local is_ui_displaying = false

function hsb_ui.new()
    if is_ui_displaying then
        warn("[HSB UI] already displaying the UI")
        return
    end

    local main_gui = Instance.new("ScreenGui")
    local main_frame = Instance.new("Frame")
    local ui_gradient = Instance.new("UIGradient")
    local script_name = Instance.new("TextLabel")
    local ui_gradient2 = Instance.new("UIGradient")
    local credits = Instance.new("TextLabel")
    local discord_invite_label = Instance.new("TextLabel")
    local ui_gradient3 = Instance.new("UIGradient")
    local main_message = Instance.new("TextBox")
    local ui_gradient4 = Instance.new("UIGradient")
    local script_name_header = Instance.new("TextLabel")
    local ui_gradient5 = Instance.new("UIGradient")
    local ui_gradient6 = Instance.new("UIGradient")
    local error_handle_label = Instance.new("TextLabel")
    local ui_text_constraint = Instance.new("UITextSizeConstraint")
    local main_message_container = Instance.new("Frame")
    local main_message_container_padding = Instance.new("UIPadding")

    main_message_container.Parent = main_frame
    main_message_container.Name = "main_message_container"
    main_message_container.BackgroundTransparency = 1
    main_message_container.Position = UDim2.new(0.055, 0, 0.982, 0)
    main_message_container.AnchorPoint = Vector2.new(0, 1)
    main_message_container.Size = UDim2.new(0.143, 0, 0.024, 0)
    main_message_container.AutomaticSize = Enum.AutomaticSize.Y

    main_message_container_padding.Parent = main_message_container
    main_message_container_padding.PaddingBottom = UDim.new(1, 0)

    main_gui.Name = "HsB UI"
    main_gui.DisplayOrder = 0
    main_gui.Parent = game.CoreGui
    main_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    main_frame.Name = "MainFrame"
    main_frame.Parent = main_gui
    main_frame.BackgroundColor3 = Color3.fromRGB(255, 243, 178)
    main_frame.ClipsDescendants = true
    main_frame.Position = UDim2.new(-0.127921283, 0, -0.324189425, 0)
    main_frame.Size = UDim2.new(2.40100002, 0, 1.33500004, 0)
    main_frame.Transparency = 0
    
    ui_gradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.00, Color3.fromRGB(33, 33, 33)),ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0)),})
    ui_gradient.Rotation = 90
    ui_gradient.Parent = main_frame
    
    script_name.Name = "ScriptName"
    script_name.Parent = main_frame
    script_name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    script_name.BackgroundTransparency = 1.000
    script_name.Position = UDim2.new(0.209, 0, 0.582, 0)
    script_name.Size = UDim2.new(0.095, 0, 0.05, 0)
    script_name.Font = Enum.Font.GothamBold
    script_name.Text = "HSB'S SCRIPTS"
    script_name.TextColor3 = Color3.fromRGB(255, 255, 255)
    script_name.TextScaled = true
    script_name.TextSize = 14.000
    script_name.TextWrapped = true
    
    ui_gradient2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.00, Color3.fromRGB(181, 109, 0)),ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 183, 0)),})
    ui_gradient2.Parent = script_name
    
    credits.Name = "Credits"
    credits.Parent = main_frame
    credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    credits.BackgroundTransparency = 1.000
    credits.Position = UDim2.new(0.218, 0, 0.628, 0)
    credits.Size = UDim2.new(0.07, 0, 0.015, 0)
    credits.Font = Enum.Font.JosefinSans
    credits.Text = "developed by senS"
    credits.TextColor3 = Color3.fromRGB(255, 255, 255)
    credits.TextScaled = true
    credits.TextSize = 14.000
    credits.TextWrapped = true
    
    discord_invite_label.Name = "discord_invite_label"
    discord_invite_label.Parent = main_frame
    discord_invite_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    discord_invite_label.BackgroundTransparency = 1.000
    discord_invite_label.Position = UDim2.new(0.18518874, 0, 0.945, 0)
    discord_invite_label.Size = UDim2.new(0.135, 0, 0.035, 0)
    discord_invite_label.Font = Enum.Font.Kalam
    discord_invite_label.Text = ""
    discord_invite_label.TextColor3 = Color3.fromRGB(255, 255, 255)
    discord_invite_label.TextScaled = true
    discord_invite_label.TextSize = 14.000
    discord_invite_label.TextWrapped = true
    
    ui_gradient3.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 157, 0)),ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 183, 0)),})
    ui_gradient3.Parent = discord_invite_label
    ui_gradient3.Archivable = false
    
    main_message.Name = "main_message"
    main_message.Parent = main_message_container
    main_message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    main_message.BackgroundTransparency = 1.000
    main_message.Position = UDim2.new(0, 0, 0, 0)
    main_message.Size = UDim2.new(0, 0, 0, 0)
    main_message.AutomaticSize = Enum.AutomaticSize.XY
    main_message.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
    main_message.ClearTextOnFocus = false
    main_message.TextEditable = false
    main_message.Text = ""
    main_message.TextColor3 = Color3.fromRGB(255, 255, 255)
    main_message.TextScaled = false
    main_message.TextSize = 18.000
    main_message.TextWrapped = true
    main_message.TextXAlignment = Enum.TextXAlignment.Left
    main_message.TextYAlignment = Enum.TextYAlignment.Center

    ui_gradient4.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 157, 0)),ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 183, 0)),})
    ui_gradient4.Parent = main_message
    ui_gradient4.Archivable = false
    
    error_handle_label.Name = "err_handle_label"
    error_handle_label.Parent = main_frame
    error_handle_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    error_handle_label.BackgroundTransparency = 1.000
    error_handle_label.Position = UDim2.new(0.061248038, 0, 0.870, 0)
    error_handle_label.Size = UDim2.new(0.12, 0, 0.04, 0)
    error_handle_label.Font = Enum.Font.Gotham
    error_handle_label.Text = "The script threw an error. The error has been copied to your clipboard. Contact senS in the HsB Discord server"
    error_handle_label.TextColor3 = Color3.fromRGB(255, 255, 255)
    error_handle_label.Visible = false
    error_handle_label.TextScaled = true
    error_handle_label.TextSize = 18.000
    error_handle_label.TextWrapped = true
    error_handle_label.TextXAlignment = Enum.TextXAlignment.Left
    
    ui_gradient6.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 157, 0)),ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 183, 0)),})
    ui_gradient6.Parent = error_handle_label
    ui_gradient6.Archivable = false
    
    script_name_header.Name = "script_name_header"
    script_name_header.Parent = main_frame
    script_name_header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    script_name_header.BackgroundTransparency = 1.000
    script_name_header.Position = UDim2.new(0.219, 0, 0.575, 0)
    script_name_header.Size = UDim2.new(0.074, 0, 0.02, 0)
    script_name_header.Font = Enum.Font.JosefinSans
    script_name_header.Text = "Join the discord server to keep up to date!"
    script_name_header.TextColor3 = Color3.fromRGB(255, 255, 255)
    script_name_header.TextScaled = true
    script_name_header.TextSize = 14.000
    script_name_header.TextWrapped = true
    
    ui_gradient5.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 157, 0)),ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 183, 0)),})
    ui_gradient5.Parent = script_name_header
    ui_gradient5.Archivable = false

    is_ui_displaying = true
    
    local obj = setmetatable({
        main_gui = main_gui,
        script_name_header = script_name_header,
        error_handle_label = error_handle_label,
        main_message = main_message,
        discord_invite_label = discord_invite_label
    }, hsb_ui)

    if getgenv().hsb_ui_instances_table and type(getgenv().hsb_ui_instances_table) == "table" then
        getgenv().hsb_ui_instances_table[obj] = obj
    end 

    return obj
end

function hsb_ui:destroy()
    if getgenv().hsb_ui_instances_table and type(getgenv().hsb_ui_instances_table) == "table" then
        getgenv().hsb_ui_instances_table[self] = nil
    end
    self.main_gui:Destroy()
    is_ui_displaying = false
end

return hsb_ui
