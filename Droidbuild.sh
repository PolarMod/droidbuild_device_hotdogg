setup_target hotdogg

target_hotdogg(){
  LOCAL_PATH=$(dirname $BASH_SOURCE)
  include $BASEDIR/droidbuild/build_vars.sh
  TARGET_NEEDS_RESYNC=true
  TARGET_LOCAL_MANIFESTS+=$LOCAL_PATH/manifests/hotdogg.xml
  TARGET_ARCH_BITNESS=64
  TARGET_CODENAME="hotdogg"
  TARGET_FULLNAME="OnePlus 7T Pro 5G McLaren"
  TARGET_BUILDTYPE="user"
  TARGET_SIGNED_BUILD=true
  TARGET_HOSTS_CAT=1
  TARGET_USES_MICROG=0
  TARGET_SUPPORTS_GVISUAL=1
  target_build-device
}

droidbuild_module(){
  # Dummy
  echo 1 > /dev/null
}
