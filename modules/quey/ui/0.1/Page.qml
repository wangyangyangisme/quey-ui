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
   \qmltype Page
   \inherits Item
   \inqmlmodule quey.ui
   \brief Represents a page on the navigation page stack.
*/
Item {
    id: page
    anchors.fill: parent
    objectName: "Page"
    visible: parent && parent.objectName === "PageContentView"

    /*!
        The title to be displayed in the page header.
    */
    property string title

    /*!
        A list of actions attached to the page.
    */
    property list<Action> actions

    /*!
        Set this to \c false if you want to hide the page header.
    */
    property bool showHeader: true

    /*!
        When set to \c true the page can't be popped from the view using the "back button".
    */
    property bool fixed: false

    /*!
        This property is \c true if \l menu is valid.
    */
    readonly property bool hasMenu: menu.items.length > 0

    /*!
        If the page is currently present in a \l PageView this property holds a reference to it. Otherwise it is \c undefined.
    */
    property var pageView

    /*!
        A list of \l MenuItem.
    */
    property list<MenuItem> menuItems

    /*!
        The attached \l Menu. You can use \l menuItems alternatively.
    */
    property Menu menu: Menu {
        parent: page
        items: menuItems
    }

    /*!
        An list of \l PageContainer items this page may be displayed in.
    */
    property list<PageContainer> containers

    /*!
        Emitted when page is pushed to a \l PageView.
    */
    signal pushed(var pageView)

    /*!
        Emitted when page is popped from a \l PageView.
    */
    signal popped(var pageView)

    /*!
        Push this page to a \l PageView.
    */
    function push(pageView) {
        pageView.push(page);
    }

    /*!
        Pop the page from the current \l PageView if any.
    */
    function pop() {
        if (pageView)
            pageView.pop(page);
    }
}
