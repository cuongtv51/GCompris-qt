/* GCompris
 *
 * SPDX-FileCopyrightText: 2015 Bruno Coudoin <bruno.coudoin@gcompris.net>
 *
 * Authors:
 *   Bruno Coudoin <bruno.coudoin@gcompris.net> (GTK+ version)
 *   Pulkit Gupta <pulkitgenius@gmail.com> (Qt Quick port)
 *
 *   SPDX-License-Identifier: GPL-3.0-or-later
 */
import QtQuick 2.6

QtObject {
   property int numberOfSubLevel: 3
   property string instruction: qsTr("Districts of Italy")
   property var levels: [
      {
         "pixmapfile" : "italy/backgrounditaly.png",
         "type" : "SHAPE_BACKGROUND_IMAGE"
      },
      {
         "pixmapfile" : "italy/liguria.png",
         "toolTipText" : "Liguria",
         "x" : "0.181",
         "y" : "0.267"
      },
      {
         "pixmapfile" : "italy/piemonte.png",
         "toolTipText" : "Piemonte",
         "x" : "0.108",
         "y" : "0.169"
      },
      {
         "pixmapfile" : "italy/valle_d_aosta.png",
         "toolTipText" : "Valle d'Aosta",
         "x" : "0.063",
         "y" : "0.13"
      },
      {
         "pixmapfile" : "italy/lombardia.png",
         "toolTipText" : "Lombardia",
         "x" : "0.276",
         "y" : "0.134"
      },
      {
         "pixmapfile" : "italy/trentino_alto_adige.png",
         "toolTipText" : "Trentino Alto Adige",
         "x" : "0.401",
         "y" : "0.07"
      },
      {
         "pixmapfile" : "italy/veneto.png",
         "toolTipText" : "Veneto",
         "x" : "0.438",
         "y" : "0.127"
      },
      {
         "pixmapfile" : "italy/friuli_venezia_giulia.png",
         "toolTipText" : "Friuli Venezia Giulia",
         "x" : "0.547",
         "y" : "0.093"
      },
      {
         "pixmapfile" : "italy/emilia_romagna.png",
         "toolTipText" : "Emilia Romagna",
         "x" : "0.366",
         "y" : "0.247"
      },
      {
         "pixmapfile" : "italy/toscana.png",
         "toolTipText" : "Toscana",
         "x" : "0.371",
         "y" : "0.341"
      },
      {
         "pixmapfile" : "italy/umbria.png",
         "toolTipText" : "Umbria",
         "x" : "0.5",
         "y" : "0.378"
      },
      {
         "pixmapfile" : "italy/marche.png",
         "toolTipText" : "Marche",
         "x" : "0.539",
         "y" : "0.346"
      },
      {
         "pixmapfile" : "italy/lazio.png",
         "toolTipText" : "Lazio",
         "x" : "0.513",
         "y" : "0.461"
      },
      {
         "pixmapfile" : "italy/abruzzo.png",
         "toolTipText" : "Abruzzo",
         "x" : "0.612",
         "y" : "0.437"
      },
      {
         "pixmapfile" : "italy/molise.png",
         "toolTipText" : "Molise",
         "x" : "0.668",
         "y" : "0.487"
      },
      {
         "pixmapfile" : "italy/campania.png",
         "toolTipText" : "Campania",
         "x" : "0.688",
         "y" : "0.569"
      },
      {
         "pixmapfile" : "italy/puglia.png",
         "toolTipText" : "Puglia",
         "x" : "0.849",
         "y" : "0.558"
      },
      {
         "pixmapfile" : "italy/basilicata.png",
         "toolTipText" : "Basilicata",
         "x" : "0.797",
         "y" : "0.589"
      },
      {
         "pixmapfile" : "italy/calabria.png",
         "toolTipText" : "Calabria",
         "x" : "0.822",
         "y" : "0.713"
      },
      {
         "pixmapfile" : "italy/sicilia.png",
         "toolTipText" : "Sicilia",
         "x" : "0.598",
         "y" : "0.819"
      },
      {
         "pixmapfile" : "italy/sardegna.png",
         "toolTipText" : "Sardegna",
         "x" : "0.198",
         "y" : "0.625"
      }
   ]
}
