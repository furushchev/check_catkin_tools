FROM ros:noetic-robot

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq update && apt-get -qq -y install build-essential cmake git python3-pip

RUN pip3 freeze
RUN pip3 install git+https://github.com/catkin/catkin_tools.git
RUN pip3 freeze

COPY cmake_pkg /catkin_ws/src/cmake_pkg
WORKDIR /catkin_ws

RUN catkin config --init --install --extend /opt/ros/noetic

RUN bash -c "source /opt/ros/noetic/setup.bash && catkin build"
RUN ls -lFah /catkin_ws/install

RUN rm -rf /catkin_ws/install
RUN bash -c "source /opt/ros/noetic/setup.bash && catkin build"
RUN ls -lFah /catkin_ws/install
