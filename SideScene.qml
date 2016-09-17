import QtQuick 2.6 as QQ2

import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0

Entity {
	id: root

	SideModelingCamera {
		id:camera
	}

	RenderSettings3 {
		camera: camera
	}

	property real cRatio: .96
	property real iRatio: .895
	property real radius: .5 * cRatio
	property real height: .66
	property real iHeight: .6
	property real bHeight: iHeight/5
	property real lw: 3.
	property real eps:1e-3


	Excavator {
		id: machine1
		radius: root.radius
		y: 0

		transform: Transform {
			scale: 0.025
			translation: Qt.vector3d(0.3, 0, 0)
		}
	}
}
