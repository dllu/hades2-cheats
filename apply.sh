#!/bin/bash

script_dir="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

pushd ~'/.steam/steam/steamapps/common/Hades II/Content/Scripts'
patch -N -s < "$script_dir/combatlogic.patch"
patch -N -s < "$script_dir/harvestlogic.patch"
patch -N -s < "$script_dir/fishinglogic.patch"
patch -N -s < "$script_dir/roomlogic.patch"
popd
