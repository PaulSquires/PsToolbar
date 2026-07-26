'    PsToolbar - reusable owner-drawn toolbar control
'    Copyright (C) 2016-2026 Paul Squires, PlanetSquires Software
'
'    This program is free software: you can redistribute it and/or modify
'    it under the terms of the GNU General Public License as published by
'    the Free Software Foundation, either version 3 of the License, or
'    (at your option) any later version.
'
'    This program is distributed in the hope that it will be useful,
'    but WITHOUT any WARRANTY; without even the implied warranty of
'    MERCHANTABILITY or FITNESS for A PARTICULAR PURPOSE.  See the
'    GNU General Public License for more details.

#pragma once


#define IDC_FRMMAIN_TOOLBAR_MAIN     1000
#define IDC_FRMMAIN_TOOLBAR_CUSTOM   1001
#define IDC_FRMMAIN_SEARCHBOX        1002
#define IDC_FRMMAIN_BTNPLAIN1        1003
#define IDC_FRMMAIN_BTNPLAIN2        1004

' Command ids handed to the click callback. Toggles report through SelChange instead, so
' they need no ids -- but they get them anyway, because a real host looks items up by id.
#define IDM_NEW          100
#define IDM_OPEN         101
#define IDM_SAVE         102
#define IDM_BUILD        103
#define IDM_RUN          104
#define IDM_STOP         105
#define IDM_WORDWRAP     106
#define IDM_SETTINGS     107
#define IDM_HELP         108
#define IDM_ALIGNLEFT    109
#define IDM_ALIGNCENTER  110
#define IDM_ALIGNRIGHT   111
#define IDM_BOLD         112

' Ids used inside the host-owned dropdown menus. These never enter the OVERFLOW menu's
' command stream -- that one uses (item index + 1) -- so they cannot collide with it.
#define IDM_RUN_DEBUG    200
#define IDM_RUN_RELEASE  201
#define IDM_RUN_PROFILE  202
#define IDM_HELP_INDEX   210
#define IDM_HELP_ABOUT   211

' The radio group the three alignment toggles share. Any non-zero value; it is a group
' IDENTITY, not an index.
#define GROUP_ALIGN      1

declare function frmMain_Show( byval hWndParent as HWND ) as LRESULT
