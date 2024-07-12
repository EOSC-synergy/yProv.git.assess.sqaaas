# SPDX-FileCopyrightText: Copyright contributors to the Software Quality Assurance as a Service (SQAaaS) project <sqaaas@ibergrid.eu>
# SPDX-FileContributor: Pablo Orviz <orviz@ifca.unican.es>
#
# SPDX-License-Identifier: GPL-3.0-only

(
cd github.com/HPCI-Lab/yProv &&
    pytest&&
    docker stop web&&
    docker rm web&&
    docker stop db&&
    docker rm db&&
    docker network disconnect yprov_net "$CONTAINER_ID"&&
    docker network rm yprov_net
)