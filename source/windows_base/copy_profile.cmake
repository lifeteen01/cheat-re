# Preserve the user's edited profile across subsequent builds.
if(NOT EXISTS "${PROFILE_DEST}")
    configure_file("${PROFILE_SOURCE}" "${PROFILE_DEST}" COPYONLY)
endif()
