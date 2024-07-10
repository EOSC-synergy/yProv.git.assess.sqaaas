# SPDX-FileCopyrightText: Copyright contributors to the Software Quality Assurance as a Service (SQAaaS) project <sqaaas@ibergrid.eu>
# SPDX-FileContributor: Pablo Orviz <orviz@ifca.unican.es>
#
# SPDX-License-Identifier: GPL-3.0-only

(
cd github.com/HPCI-Lab/yProv &&
    make torch-env-cpu&&
    make tensorflow-env-cpu&&
    .venv-pytorch/bin/pytest -v ./tests/ -m "not slurm and not memory_heavy"
)