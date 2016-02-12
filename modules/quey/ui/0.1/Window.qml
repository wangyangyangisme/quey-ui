/*
 * This file is part of the Quey Project
 * Copyright (C) 2015 Tim Süberkrüb (https://github.com/tim-sueberkrueb)
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
import QtQuick.Window 2.1 as QtQuickWindow
/*!
   \qmltype Window
   \inqmlmodule quey.ui
   \inherits QtQuickWindow.Window
   \brief Provides a window

   Inherits \c QtQuick.Window.Window. Please refer to the \l {http://doc.qt.io/qt-5/qml-qtquick-window-window.html}{Qt documentation} for more information.
 */
QtQuickWindow.Window {
    /*!
       Opens the window. This is a duplicate of \c show.
     */
    function open() {
        show();
    }
}
