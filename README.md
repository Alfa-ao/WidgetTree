# WidgetTree

Простая как пробка библиотека для вывода дерева виджетов [имя (тип)] в mods.txt

## Подключение

[**ForgePackage**](https://github.com/Alfa-ao/ForgePackage)

```
require Alfa-ao/WidgetTree
```

## Примеры

```lua
--- Единственная фун-я
--- @param rootName string имя mainForm виджета для common.GetAddonMainForm( rootName )
widgetTree( "ChatLog" )
```

Дерево в mods.txt
```lua
common.GetAddonMainForm = {
    ChatLog (WidgetForm) = {
        Target (WidgetPanel),
        Area (WidgetPanel) = {
            Panel13 (WidgetPanel) = {
                Frame (WidgetPanel) = {
                    Glare (WidgetPanel) = {
                        Area (WidgetPanel),
                        Glow (WidgetPanel),
                    },
                    Drag (WidgetPanel),
                    DragHH (WidgetButton),
                    Pin (WidgetButton),
                    Cross (WidgetButton),
                    Opacity (WidgetDiscreteSlider) = {
                        __Button (WidgetButton),
                    },
                    Settings (WidgetPanel) = {
                        Time (WidgetButton),
                        Channel (WidgetButton),
                        Sender (WidgetButton),
                        SpamGuard (WidgetButton),
                        FontSize (WidgetPanel) = {
                            Previous (WidgetButton),
                            Next (WidgetButton),
                        },
                        FontName (WidgetPanel) = {
                            Previous (WidgetButton),
                            Next (WidgetButton),
                            Label (WidgetTextView),
                        },
                        CleanUp (WidgetButton),
                    },
                },
                Target (WidgetPanel),
                Tabs (WidgetPanel) = {
                    Add (WidgetButton) = {
                        Icon (WidgetPanel),
                    },
                },
                Container (WidgetTextContainer) = {
                    ScrollStart (WidgetButton),
                    ScrollEnd (WidgetButton),
                    __Border (WidgetPanel) = {
                        __Content (RD),
                    },
                    __ScrollBar (WidgetGlideScrollBar) = {
                        __IncButton (WidgetButton),
                        __DecButton (WidgetButton),
                        __Slider (WidgetGlideSlider) = {
                            __Button (WidgetButton),
                        },
                    },
                },
                Minimize (WidgetButton),
                Options (WidgetButton),
            },
            Panel02 (WidgetPanel) = {
                Frame (WidgetPanel) = {
                    Glare (WidgetPanel) = {
                        Area (WidgetPanel),
                        Glow (WidgetPanel),
                    },
                    Drag (WidgetPanel),
                    DragHH (WidgetButton),
                    Pin (WidgetButton),
                    Cross (WidgetButton),
                    Opacity (WidgetDiscreteSlider) = {
                        __Button (WidgetButton),
                    },
                    Settings (WidgetPanel) = {
                        Time (WidgetButton),
                        Channel (WidgetButton),
                        Sender (WidgetButton),
                        SpamGuard (WidgetButton),
                        FontSize (WidgetPanel) = {
                            Previous (WidgetButton),
                            Next (WidgetButton),
                        },
                        FontName (WidgetPanel) = {
                            Previous (WidgetButton),
                            Next (WidgetButton),
                            Label (WidgetTextView),
                        },
                        CleanUp (WidgetButton),
                    },
                },
                Target (WidgetPanel),
                Tabs (WidgetPanel) = {
                    Add (WidgetButton) = {
                        Icon (WidgetPanel),
                    },
                    Tab (WidgetButton) = {
                        Blink (WidgetPanel),
                    },
                    Tab (WidgetButton) = {
                        Blink (WidgetPanel),
                    },
                    Tab (WidgetButton) = {
                        Blink (WidgetPanel),
                    },
                    Tab (WidgetButton) = {
                        Blink (WidgetPanel),
                    },
                    Tab (WidgetButton) = {
                        Blink (WidgetPanel),
                    },
                },
                Container (WidgetTextContainer) = {
                    ScrollStart (WidgetButton),
                    ScrollEnd (WidgetButton),
                    __Border (WidgetPanel) = {
                        __Content (RD),
                    },
                    __ScrollBar (WidgetGlideScrollBar) = {
                        __IncButton (WidgetButton),
                        __DecButton (WidgetButton),
                        __Slider (WidgetGlideSlider) = {
                            __Button (WidgetButton),
                        },
                    },
                },
                Minimize (WidgetButton),
                Options (WidgetButton),
            },
        },
        Dock (WidgetPanel) = {
            Frame (WidgetPanel) = {
                Glow (WidgetPanel),
            },
            Content (WidgetPanel) = {
                Shortcut (WidgetButton) = {
                    Highlight (WidgetPanel),
                },
            },
            Options (WidgetButton),
            Emotes (WidgetPanel) = {
                Emotes (WidgetButton),
                Icons (WidgetButton),
                Moods (WidgetButton),
                Mentor (WidgetButton),
                Smiles (WidgetButton),
            },
        },
        TabAlone (WidgetButton) = {
            Blink (WidgetPanel),
        },
        OptionsTab (WidgetPanel) = {
            Header (WidgetPanel) = {
                Label (WidgetTextView),
            },
            Content (WidgetPanel),
            Rename (WidgetButton),
            Clear (WidgetButton),
            Default (WidgetButton),
            Delete (WidgetButton),
            Close (WidgetButton),
            Cross (WidgetButton),
        },
        OptionsPanel (WidgetPanel) = {
            Header (WidgetPanel) = {
                Label (WidgetTextView),
            },
            Default (WidgetButton),
            Delete (WidgetButton),
            Close (WidgetButton),
            Cross (WidgetButton),
        },
        OptionsArea (WidgetPanel) = {
            Header (WidgetPanel) = {
                Label (WidgetTextView),
            },
            Default (WidgetButton),
            Close (WidgetButton),
            Cross (WidgetButton),
        },
        Channels (WidgetPanel) = {
            Header (WidgetPanel) = {
                Label (WidgetTextView),
            },
            Content (WidgetPanel),
            Cross (WidgetButton),
        },
        Colors (WidgetPanel) = {
            Header (WidgetPanel) = {
                Label (WidgetTextView),
            },
            Content (WidgetPanel),
            Cross (WidgetButton),
        },
        Rename (WidgetPanel) = {
            Header (WidgetPanel) = {
                Label (WidgetTextView),
            },
            Text (WidgetTextView),
            TextEditLine (WidgetPanel) = {
                EditLine (WidgetEditLine),
            },
            Accept (WidgetButton),
            Cancel (WidgetButton),
            Cross (WidgetButton),
        },
        Effect (WidgetPanel),
    }
}

```
