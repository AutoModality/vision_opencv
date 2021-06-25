SHELL := /bin/bash

SRC_DIR=src

default:

	mkdir -p ${SRC_DIR}

	cp -rf cv_bridge ${SRC_DIR}
	cp -rf image_geometry ${SRC_DIR}
	cp -rf vision_opencv ${SRC_DIR}

	source /opt/ros/melodic/setup.bash && catkin_make && catkin_make install


clean:
	rm -rf ${SRC_DIR}
	rm -rf *.*deb
	rm -rf build devel install