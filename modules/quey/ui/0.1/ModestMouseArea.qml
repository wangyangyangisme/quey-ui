/*
 * This file is part of the Quey Project
 * Copyright (C) 2015-2016 Tim Süberkrüb (https://github.com/tim-sueberkrueb)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation, either version 2.1 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.4
import quey.ui 0.1

/*!
   \qmltype ModestMouseArea
   \inherits MouseArea
   \inqmlmodule quey.ui
   \brief A \c MouseArea that allows to simply pass specified events.
 */
MouseArea {
    propagateComposedEvents: true

    property bool passClicked: true
    property bool passPressed: true
    property bool passPressAndHold: true
    property bool passReleased: true
    property bool passPositionChanged: true
    property bool passDoubleClicked: true
    property bool passWheel: true

    onClicked: if (passClicked) mouse.accepted = false;
    onPressed: if (passPressed) mouse.accepted = false;
    onPressAndHold: if (passPressAndHold) mouse.accepted = false;
    onReleased: if (passReleased) mouse.accepted = false;
    onPositionChanged: if(passPositionChanged) mouse.accepted = false;
    onDoubleClicked: if(passDoubleClicked) mouse.accepted = false;
    onWheel: if (passWheel) wheel.accepted = false;
}
