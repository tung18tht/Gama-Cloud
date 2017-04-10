#!/bin/bash
# Copyright (c) 2012-2016 Codenvy, S.A.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#

cmd_test() {
  debug $FUNCNAME

  # Not loaded as part of the init process to save on download time
  update_image_if_not_found eclipse/che-test:nightly
  docker_run -it eclipse/che-test:nightly "$@"

}