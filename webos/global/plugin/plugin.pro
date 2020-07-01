# Copyright (c) 2015-2020 LG Electronics, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

TEMPLATE = lib
CONFIG += plugin
QT += qml

TARGET = webosglobalplugin
uri = WebOS.Global

installPath = $$WEBOS_INSTALL_QML/$$replace(uri, \\., /)

DEFINES += \
    WEBOS_INSTALL_WEBOS_APPLICATIONSDIR=\\\"$$WEBOS_INSTALL_WEBOS_APPLICATIONSDIR\\\" \
    WEBOS_INSTALL_QML=\\\"$$WEBOS_INSTALL_QML\\\" \
    WEBOS_QT_LOCALIZATION_QM_BASEDIR=\\\"$$WEBOS_QT_LOCALIZATION_QM_BASEDIR\\\"

HEADERS += \
    src/webos.h \
    src/webosglobalplugin.h

SOURCES += \
    src/webos.cpp \
    src/webosglobalplugin.cpp

others.files = \
    qml/WebOSMouseArea.qml \
    qml/WebOSMouseAreaInternal.qml \
    qml/qmldir \
    src/webosglobalplugindescription.json
others.path = $$installPath

target.path = $$installPath

INSTALLS += target others
