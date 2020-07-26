/* GCompris - Bulb.qml
 *
 * Copyright (C) 2020 Aiswarya Kaitheri Kandoth <aiswaryakk29@gmail.com>
 *
 * Authors:
 *   Bruno Coudoin <bruno.coudoin@gcompris.net> (GTK+ version)
 *   Aiswarya Kaitheri Kandoth <aiswaryakk29@gmail.com> (Qt Quick port)
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <https://www.gnu.org/licenses/>.
 */
import QtQuick 2.6
import GCompris 1.0
import "../analog_electricity.js" as Activity

ElectricalComponent {
    id: bulb
    terminalSize: 0.2
    noOfConnectionPoints: 2
    information: qsTr("Basically bulb is a resistance in the circuit. Bulb lights with an intensity propotional to the supply voltage.")

    property alias connectionPoints: connectionPoints
    property alias aMeter1: aMeter1
    property alias aMeter2: aMeter2
    property var connectionPointPosX: [0.2, 0.8]
    property string componentName: "Bulb"
    property var internalNetlistIndex: [-1, -1]
    property var externalNetlistIndex: [-1, -1]
    property var netlistModel:
    [
        "r",
        [
        ],
        {
            "name": componentName,
            "r": "1000",
            "_json_": 0
        },
        [
            0,
            0
        ]
    ]

    Item {
        id: aMeter1
        property int jsonNumber: 0
        property double currentValue: 0
        property var netlistModel:
        [
            "a",
            [
            ],
            {
                "name": "aMeter1-",
                "color": "magenta",
                "offset": "0",
                "_json_": aMeter1.jsonNumber
            },
            [
                0,
                0
            ]
        ]
    }

    Item {
        id: aMeter2
        property int jsonNumber: 0
        property double currentValue: 0
        property var netlistModel:
        [
            "a",
            [
            ],
            {
                "name": "aMeter2-",
                "color": "magenta",
                "offset": "0",
                "_json_": aMeter2.jsonNumber
            },
            [
                0,
                0
            ]
        ]
    }

    Repeater {
        id: connectionPoints
        model: 2
        delegate: connectionPoint
        Component.onCompleted: {
            console.log("repeater is completed")
            console.log("parent of connection point is " + connectionPoints.itemAt(0).parent.id)
        }
        Component {
            id: connectionPoint
            TerminalPoint {
                posX: connectionPointPosX[index]
                posY: 1
            }
        }
    }

    function initConnections() {
        var connectionIndex = Activity.connectionCount
        bulb.externalNetlistIndex[0] = ++connectionIndex
        connectionPoints.itemAt(0).updateNetlistIndex(connectionIndex)
        console.log("aMeter1 index is " + bulb.externalNetlistIndex[0])
        bulb.internalNetlistIndex[0] = ++connectionIndex
        console.log("bulb0 index is " + bulb.internalNetlistIndex[0])
        bulb.internalNetlistIndex[1] = ++connectionIndex
        console.log("bulb1 index is " + bulb.internalNetlistIndex[1])
        bulb.externalNetlistIndex[1] = ++connectionIndex
        connectionPoints.itemAt(1).updateNetlistIndex(connectionIndex)
        console.log("aMeter2 index is " + bulb.externalNetlistIndex[1])
        Activity.connectionCount = connectionIndex
    }

    function addToNetlist() {
//         var netlistItem = aMeter1.netlistModel;
//         Activity.netlistComponents.push(aMeter1);
//         netlistItem[2].name = "aMeter1-" + componentName
//         netlistItem[2]._json = Activity.netlist.length;
//         netlistItem[3][0] = bulb.externalNetlistIndex[0]
//         netlistItem[3][1] = bulb.internalNetlistIndex[0]
//         Activity.netlist.push(netlistItem);

        var netlistItem = bulb.netlistModel;
        Activity.netlistComponents.push(bulb);
        netlistItem[2].name = componentName
        netlistItem[2]._json = Activity.netlist.length;
        netlistItem[3][0] = bulb.externalNetlistIndex[0]
        netlistItem[3][1] = bulb.externalNetlistIndex[1]
        Activity.netlist.push(netlistItem);

//         netlistItem = aMeter2.netlistModel;
//         Activity.netlistComponents.push(aMeter2)
//         netlistItem[2].name = "aMeter2-" + componentName
//         netlistItem[2]._json = Activity.netlist.length;
//         netlistItem[3][0] = bulb.internalNetlistIndex[1]
//         netlistItem[3][1] = bulb.externalNetlistIndex[1]
//         Activity.netlist.push(netlistItem);

        console.log("item added to " + Activity.netlist);
    }

//     function updateOutput(wireVisited) {
//          var terminal = connectionPoints.itemAt(0)
//         terminal.value = (nodeXs.itemAt(0).wires.length != 0) ? !nodeXs.itemAt(0).value : 0
//         for(var i = 0 ; i < terminal.wires.length ; ++i)
//             terminal.wires[i].to.value = terminal.value
// 
//         var componentVisited = []
//         for(var i = 0 ; i < terminal.wires.length ; ++i) {
//             var wire = terminal.wires[i]
//             var component = wire.node2.parent
//             if(componentVisited[component] != true && wireVisited[wire] != true) {
//                 componentVisited[component] = true
//                 wireVisited[wire] = true
//                 component.updateOutput(wireVisited)
//             }
//         }
//     }
}

