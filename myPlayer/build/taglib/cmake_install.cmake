# Install script for directory: /home/maria/Downloads/taglib-1.9.1/taglib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  foreach(file
      "$ENV{DESTDIR}/usr/lib/libtag.so.1.14.0"
      "$ENV{DESTDIR}/usr/lib/libtag.so.1"
      "$ENV{DESTDIR}/usr/lib/libtag.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/lib/libtag.so.1.14.0;/usr/lib/libtag.so.1;/usr/lib/libtag.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/lib" TYPE SHARED_LIBRARY FILES
    "/home/maria/Downloads/taglib-1.9.1/build/taglib/libtag.so.1.14.0"
    "/home/maria/Downloads/taglib-1.9.1/build/taglib/libtag.so.1"
    "/home/maria/Downloads/taglib-1.9.1/build/taglib/libtag.so"
    )
  foreach(file
      "$ENV{DESTDIR}/usr/lib/libtag.so.1.14.0"
      "$ENV{DESTDIR}/usr/lib/libtag.so.1"
      "$ENV{DESTDIR}/usr/lib/libtag.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/include/taglib/tag.h;/usr/include/taglib/fileref.h;/usr/include/taglib/audioproperties.h;/usr/include/taglib/taglib_export.h;/usr/include/taglib/taglib_config.h;/usr/include/taglib/taglib.h;/usr/include/taglib/tstring.h;/usr/include/taglib/tlist.h;/usr/include/taglib/tlist.tcc;/usr/include/taglib/tstringlist.h;/usr/include/taglib/tbytevector.h;/usr/include/taglib/tbytevectorlist.h;/usr/include/taglib/tbytevectorstream.h;/usr/include/taglib/tiostream.h;/usr/include/taglib/tfile.h;/usr/include/taglib/tfilestream.h;/usr/include/taglib/tmap.h;/usr/include/taglib/tmap.tcc;/usr/include/taglib/tpropertymap.h;/usr/include/taglib/trefcounter.h;/usr/include/taglib/tdebuglistener.h;/usr/include/taglib/mpegfile.h;/usr/include/taglib/mpegproperties.h;/usr/include/taglib/mpegheader.h;/usr/include/taglib/xingheader.h;/usr/include/taglib/id3v1tag.h;/usr/include/taglib/id3v1genres.h;/usr/include/taglib/id3v2extendedheader.h;/usr/include/taglib/id3v2frame.h;/usr/include/taglib/id3v2header.h;/usr/include/taglib/id3v2synchdata.h;/usr/include/taglib/id3v2footer.h;/usr/include/taglib/id3v2framefactory.h;/usr/include/taglib/id3v2tag.h;/usr/include/taglib/attachedpictureframe.h;/usr/include/taglib/commentsframe.h;/usr/include/taglib/generalencapsulatedobjectframe.h;/usr/include/taglib/ownershipframe.h;/usr/include/taglib/popularimeterframe.h;/usr/include/taglib/privateframe.h;/usr/include/taglib/relativevolumeframe.h;/usr/include/taglib/textidentificationframe.h;/usr/include/taglib/uniquefileidentifierframe.h;/usr/include/taglib/unknownframe.h;/usr/include/taglib/unsynchronizedlyricsframe.h;/usr/include/taglib/urllinkframe.h;/usr/include/taglib/oggfile.h;/usr/include/taglib/oggpage.h;/usr/include/taglib/oggpageheader.h;/usr/include/taglib/xiphcomment.h;/usr/include/taglib/vorbisfile.h;/usr/include/taglib/vorbisproperties.h;/usr/include/taglib/oggflacfile.h;/usr/include/taglib/speexfile.h;/usr/include/taglib/speexproperties.h;/usr/include/taglib/opusfile.h;/usr/include/taglib/opusproperties.h;/usr/include/taglib/flacfile.h;/usr/include/taglib/flacpicture.h;/usr/include/taglib/flacproperties.h;/usr/include/taglib/flacmetadatablock.h;/usr/include/taglib/apefile.h;/usr/include/taglib/apeproperties.h;/usr/include/taglib/apetag.h;/usr/include/taglib/apefooter.h;/usr/include/taglib/apeitem.h;/usr/include/taglib/mpcfile.h;/usr/include/taglib/mpcproperties.h;/usr/include/taglib/wavpackfile.h;/usr/include/taglib/wavpackproperties.h;/usr/include/taglib/trueaudiofile.h;/usr/include/taglib/trueaudioproperties.h;/usr/include/taglib/rifffile.h;/usr/include/taglib/aifffile.h;/usr/include/taglib/aiffproperties.h;/usr/include/taglib/wavfile.h;/usr/include/taglib/wavproperties.h;/usr/include/taglib/infotag.h;/usr/include/taglib/asffile.h;/usr/include/taglib/asfproperties.h;/usr/include/taglib/asftag.h;/usr/include/taglib/asfattribute.h;/usr/include/taglib/asfpicture.h;/usr/include/taglib/mp4file.h;/usr/include/taglib/mp4atom.h;/usr/include/taglib/mp4tag.h;/usr/include/taglib/mp4item.h;/usr/include/taglib/mp4properties.h;/usr/include/taglib/mp4coverart.h;/usr/include/taglib/modfilebase.h;/usr/include/taglib/modfile.h;/usr/include/taglib/modtag.h;/usr/include/taglib/modproperties.h;/usr/include/taglib/itfile.h;/usr/include/taglib/itproperties.h;/usr/include/taglib/s3mfile.h;/usr/include/taglib/s3mproperties.h;/usr/include/taglib/xmfile.h;/usr/include/taglib/xmproperties.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/include/taglib" TYPE FILE FILES
    "/home/maria/Downloads/taglib-1.9.1/taglib/tag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/fileref.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/audioproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/taglib_export.h"
    "/home/maria/Downloads/taglib-1.9.1/build/taglib_config.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/taglib.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tstring.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tlist.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tlist.tcc"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tstringlist.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tbytevector.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tbytevectorlist.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tbytevectorstream.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tiostream.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tfilestream.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tmap.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tmap.tcc"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tpropertymap.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/trefcounter.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/toolkit/tdebuglistener.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/mpegfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/mpegproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/mpegheader.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/xingheader.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v1/id3v1tag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v1/id3v1genres.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/id3v2extendedheader.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/id3v2frame.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/id3v2header.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/id3v2synchdata.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/id3v2footer.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/id3v2framefactory.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/id3v2tag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/attachedpictureframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/commentsframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/generalencapsulatedobjectframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/ownershipframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/popularimeterframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/privateframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/relativevolumeframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/textidentificationframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/uniquefileidentifierframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/unknownframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/unsynchronizedlyricsframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpeg/id3v2/frames/urllinkframe.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/oggfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/oggpage.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/oggpageheader.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/xiphcomment.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/vorbis/vorbisfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/vorbis/vorbisproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/flac/oggflacfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/speex/speexfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/speex/speexproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/opus/opusfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ogg/opus/opusproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/flac/flacfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/flac/flacpicture.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/flac/flacproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/flac/flacmetadatablock.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ape/apefile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ape/apeproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ape/apetag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ape/apefooter.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/ape/apeitem.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpc/mpcfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mpc/mpcproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/wavpack/wavpackfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/wavpack/wavpackproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/trueaudio/trueaudiofile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/trueaudio/trueaudioproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/riff/rifffile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/riff/aiff/aifffile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/riff/aiff/aiffproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/riff/wav/wavfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/riff/wav/wavproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/riff/wav/infotag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/asf/asffile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/asf/asfproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/asf/asftag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/asf/asfattribute.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/asf/asfpicture.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mp4/mp4file.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mp4/mp4atom.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mp4/mp4tag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mp4/mp4item.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mp4/mp4properties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mp4/mp4coverart.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mod/modfilebase.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mod/modfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mod/modtag.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/mod/modproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/it/itfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/it/itproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/s3m/s3mfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/s3m/s3mproperties.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/xm/xmfile.h"
    "/home/maria/Downloads/taglib-1.9.1/taglib/xm/xmproperties.h"
    )
endif()

