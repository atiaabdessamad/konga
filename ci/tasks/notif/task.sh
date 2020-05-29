      LAST_COMMIT_HASH=$(cd kong-resource-git && git log -1 | grep commit | cut -d' ' -f2)
      LAST_COMMIT_DETAILS=$(cd kong-resource-git && git log -1 --name-status)
      echo "kong APP Build " $BUILD_STATUS " ${LAST_COMMIT_HASH}" >> notification-content/notification_subject.txt
      echo "kong APP Build " $BUILD_STATUS "\n\n ${LAST_COMMIT_DETAILS}" >> notification-content/notification_body.txt
