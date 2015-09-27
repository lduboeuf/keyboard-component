/*
 * Copyright 2015 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import Ubuntu.Components 0.1

import "key_constants.js" as UI

/*!
  Item to show a "bubble" with a text in the center.
  The bottom center is where the bubble points to, and it animates to that position
  when hiding it.
 */
Item {
    id: root

    property var chars
    property int index: 0

    visible: false

    FlickPopKey {
        id: center
        labelChar: chars[0]
        anchors.centerIn: parent
        labelColor: index == 0 ? UbuntuColors.orange : UI.fontColor
    }
    FlickPopKey {
        labelChar: chars[1] ? chars[1] : ""
        anchors.verticalCenter: center.verticalCenter
        anchors.right: center.left
        labelColor: index == 1 ? UbuntuColors.orange : UI.fontColor
    }
    FlickPopKey {
        labelChar: chars[2] ? chars[2] : ""
        anchors.horizontalCenter: center.horizontalCenter
        anchors.bottom: center.top
        labelColor: index == 2 ? UbuntuColors.orange : UI.fontColor
    }
    FlickPopKey {
        labelChar: chars[3] ? chars[3] : ""
        anchors.verticalCenter: center.verticalCenter
        anchors.left: center.right
        labelColor: index == 3 ? UbuntuColors.orange : UI.fontColor
    }
    FlickPopKey {
        labelChar: chars[4] ? chars[4] : ""
        anchors.horizontalCenter: center.horizontalCenter
        anchors.top: center.bottom
        labelColor: index == 4 ? UbuntuColors.orange : UI.fontColor
    }
}
