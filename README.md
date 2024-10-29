# ros2_debian

The purpose of this repository is to provide docker images for building ros2_control on debian. 
They are automatically built and pushed to https://github.com/ros-controls/ros2_rhel/pkgs/container/ros

To manually build them, you can use the following commands:
```bash
docker build -t ros2_debian11_humble . -f Dockerfile.debian11 --build-arg ROS_DISTRO=humble
docker build -t ros2_debian11_iron . -f Dockerfile.debian11 --build-arg ROS_DISTRO=iron
docker build -t ros2_debian12_jazzy . -f Dockerfile.debian12 --build-arg ROS_DISTRO=jazzy
docker build -t ros2_debian12_rolling . -f Dockerfile.debian12 --build-arg ROS_DISTRO=rolling
```