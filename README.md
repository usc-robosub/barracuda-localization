# barracuda-localization

Build using docker compose:
```
docker-compose up -d
```

## Fusing Sensors for the /map frame (map -> odom)

For map -> odom you need an ekf/ukf_localization_node with the node's "world_frame" parameter set to the name of your map frame.

It fuses:
- All continuous sensor data and algorithm outputs that aren't global pose estimates
  - Yes! This is actually the case! Non-global sensor and algorithm data is used in the global pose Kalman Filter!
- Global pose estimates, for example...
  - AMCL (or other localisation algorithms)
  - Absolute global pose data, for example...
  - GPS (after using navsat: http://docs.ros.org/melodic/api/robot_localization/html/navsat_transform_node.html)
  - Ultrasonic beacons (we're going to fuse these!)
  - Global Visual Odometry (from an overhead camera, perhaps?)

## Fusing Sensors for the /odom frame (odom -> base_link)

For odom -> base_link you need an ekf/ukf_localization_node with the node's "world_frame" parameter set to the name of your odom frame.

It fuses:
- All continuous sensor data and algorithm outputs that aren't global pose estimates, for example...
  - IMU
  - Visual Odometry