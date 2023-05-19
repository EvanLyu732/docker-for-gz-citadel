# docker-for-gz-citadel

---

gz-citadel with ros1 noetic

### Usage

1. Run setup.bash.
2. Run build-gz-citadel.sh inside docker container.


### Building Sequence

Dependencies graph for every ign component with ign prefix package.

```txt 
ign-cmake2;
    none

sdformat9:
    none

ign-tools:
    none

ign-common3:
    > ign-math6
    > ign-cmake2

ign-plugin1:
    > ign-cmake2

ign-msgs5:
    > ign-cmake2

ign-math6:
    > ign-cmake2


ign-transport8:
    > ign-cmake2
    > ign-msgs5
    > ignprotobuf

ign-fuel-tools4:
    > ign-cmake2
    > ign-common3
    > ign-msgs5
    > ign-tools
    > ign-math6

ign-gui3:
    > ign-cmake2
    > ign-math6
    > ign-common3
    > ign-transport8
    > ign-rendering3
    > ign-msgs5

ign-launch2:
    > ign-cmake2
    > ign-common3
    > ign-plugin1
    > ign-tools
    > ign-transport8
    > ign-msgs5
    > ign-math6
    > ign-gui3


ign-physics2:
    > ign-cmake2
    > ign-common3
    > ign-math6
    > ign-plugin1
    > sdformat9

    
ign-sensors3:
    > ign-cmake2
    > ign-math6
    > ign-common3
    > ign-transport8
    > ign-rendering3
    > ign-msgs5
    > ign-plugin1

ign-rendering3:
    > ign-cmake2
    > ign-math6
    > ign-common3
    > ign-plugin1

ign-gazebo:
    > ign-cmake2
    > sdformat9
    > ign-msgs5
    > ign-plugin1
    > ign-transport8
    > ign-common3
    > ign-fuel-tools4
    > ign-gui3
    > ign-physics2
    > ign-sensors3
    > ign-rendering3
    > ign-math6
    > ign-tools


```

