require "json"

enum ImGuiCol
    Text
    TextDisabled
    WindowBg
    ChildBg
    PopupBg
    Border
    BorderShadow
    FrameBg
    FrameBgHovered
    FrameBgActive
    TitleBg
    TitleBgActive
    TitleBgCollapsed
    MenuBarBg
    ScrollbarBg
    ScrollbarGrab
    ScrollbarGrabHovered
    ScrollbarGrabActive
    CheckMark
    SliderGrab
    SliderGrabActive
    Button
    ButtonHovered
    ButtonActive
    Header
    HeaderHovered
    HeaderActive
    Separator
    SeparatorHovered
    SeparatorActive
    ResizeGrip
    ResizeGripHovered
    ResizeGripActive
    Tab
    TabHovered
    TabActive
    TabUnfocused
    TabUnfocusedActive
    PlotLines
    PlotLinesHovered
    PlotHistogram
    PlotHistogramHovered
    TableHeaderBg
    TableBorderStrong
    TableBorderLight
    TableRowBg
    TableRowBgAlt
    TextSelectedBg
    DragDropTarget
    NavHighlight
    NavWindowingHighlight
    NavWindowingDimBg
    ModalWindowDimBg
    COUNT
  end

theme2Colors = {
  "darkestGrey" => "#141f2c",
  "darkerGrey" => "#2a2e39",
  "darkGrey" => "#363b4a",
  "lightGrey" => "#5a5a5a",
  "lighterGrey" => "#7A818C",
  "evenLighterGrey" => "#8491a3",
  "black" => "#0A0B0D",
  "green" => "#75f986",
  "red" => "#ff0062",
  "white" => "#fff"
}

XFramesTheme = Hash(ImGuiCol, Tuple(String, Float64))

theme2 = XFramesTheme.new

theme2[ImGuiCol::Text] = {"#{theme2Colors["white"]}", 1.0}
theme2[ImGuiCol::TextDisabled] = {"#{theme2Colors["lighterGrey"]}", 1.0}
theme2[ImGuiCol::WindowBg] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::ChildBg] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::PopupBg] = {"#{theme2Colors["white"]}", 1.0}
theme2[ImGuiCol::Border] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::BorderShadow] = {"#{theme2Colors["darkestGrey"]}", 1.0}
theme2[ImGuiCol::FrameBg] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::FrameBgHovered] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::FrameBgActive] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::TitleBg] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::TitleBgActive] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::TitleBgCollapsed] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::MenuBarBg] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::ScrollbarBg] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::ScrollbarGrab] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::ScrollbarGrabHovered] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::ScrollbarGrabActive] = {"#{theme2Colors["darkestGrey"]}", 1.0}
theme2[ImGuiCol::CheckMark] = {"#{theme2Colors["darkestGrey"]}", 1.0}
theme2[ImGuiCol::SliderGrab] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::SliderGrabActive] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::Button] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::ButtonHovered] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::ButtonActive] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::Header] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::HeaderHovered] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::HeaderActive] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::Separator] = {"#{theme2Colors["darkestGrey"]}", 1.0}
theme2[ImGuiCol::SeparatorHovered] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::SeparatorActive] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::ResizeGrip] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::ResizeGripHovered] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::ResizeGripActive] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::Tab] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::TabHovered] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::TabActive] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::TabUnfocused] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::TabUnfocusedActive] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::PlotLines] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::PlotLinesHovered] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::PlotHistogram] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::PlotHistogramHovered] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::TableHeaderBg] = {"#{theme2Colors["black"]}", 1.0}
theme2[ImGuiCol::TableBorderStrong] = {"#{theme2Colors["lightGrey"]}", 1.0}
theme2[ImGuiCol::TableBorderLight] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::TableRowBg] = {"#{theme2Colors["darkGrey"]}", 1.0}
theme2[ImGuiCol::TableRowBgAlt] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::TextSelectedBg] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::DragDropTarget] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::NavHighlight] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::NavWindowingHighlight] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::NavWindowingDimBg] = {"#{theme2Colors["darkerGrey"]}", 1.0}
theme2[ImGuiCol::ModalWindowDimBg] = {"#{theme2Colors["darkerGrey"]}", 1.0}

theme2_hash = theme2.map do |col, (color, alpha)|
    [col.to_i.to_s, [color, alpha]]
end
  
theme2_json = theme2.to_h { |key, value| { key.to_i.to_s, value } }.to_json
puts theme2_json

# Define a struct for the font definition
struct FontDef
    getter name : String
    getter sizes : Array(Int32)

    def initialize(name : String, sizes : Array(Int32))
        @name = name
        @sizes = sizes
    end
end

# Create the font_defs array with FontDef instances
font_defs = {
    "defs" => [
        FontDef.new("roboto-regular", [16, 18, 20, 24, 28, 32, 36, 48])
    ].map do |font_def|
        font_def.sizes.map do |size|
        {"name" => font_def.name, "size" => size}
        end
    end.flatten
}
  

# Convert to JSON
font_defs_json = font_defs.to_json
puts font_defs_json


alias OnInitCb = Proc(Void)
alias OnTextChangedCb = Proc(Int32, Pointer(LibC::Char), Void)
alias OnComboChangedCb = Proc(Int32, Int32, Nil)
alias OnNumericValueChangedCb = Proc(Int32, Float32, Void)
alias OnBooleanValueChangedCb = Proc(Int32, Bool, Void)
alias OnMultipleNumericValuesChangedCb = Proc(Int32, Pointer(Float32), Int32, Void)
alias OnClickCb = Proc(Int32, Void)

@[Link("xframesshared")]
lib XFrames
  fun init(
    assetsBasePath : Pointer(LibC::Char),
    rawFontDefinitions : Pointer(LibC::Char),
    rawStyleOverrideDefinitions : Pointer(LibC::Char),
    onInit : OnInitCb,
    onTextChanged : OnTextChangedCb,
    onComboChanged : OnComboChangedCb,
    onNumericValueChanged : OnNumericValueChangedCb,
    onBooleanValueChanged : OnBooleanValueChangedCb,
    onMultipleNumericValuesChanged : OnMultipleNumericValuesChangedCb,
    onClick : OnClickCb
  ) : Nil
end

onInit = ->() {  }
onTextChanged = ->(id : Int32, value : Pointer(LibC::Char)) {  }
onComboChanged = ->(id : Int32, selected_index : Int32) {  }
onNumericValueChanged = ->(id : Int32, value : Float32) {  }
onBooleanValueChanged = ->(id : Int32, value : Bool) {  }
onMultipleNumericValuesChanged = ->(id : Int32, values: Pointer(Float32), num_values : Int32) {  }
onClick = ->(id : Int32) { puts "Clicked" }

XFrames.init(
  "./assets", 
  font_defs_json,
  theme2_json, 
  onInit, 
  onTextChanged,
  onComboChanged, 
  onNumericValueChanged, 
  onBooleanValueChanged, 
  onMultipleNumericValuesChanged, 
  onClick
)

input = gets
