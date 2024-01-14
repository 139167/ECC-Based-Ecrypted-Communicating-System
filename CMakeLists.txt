cmake_minimum_required(VERSION 3.16)

project(ECC_Based_Ecrypted_Communicating_System VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appECC_Based_Ecrypted_Communicating_System
    main.cpp
)

qt_add_qml_module(appECC_Based_Ecrypted_Communicating_System
    URI ECC_Based_Ecrypted_Communicating_System
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES images/Anonymous1.png images/Anonymous2.png images/Jacky.png images/Miter.png images/Tony.png
    QML_FILES ContactPage.qml
    QML_FILES ConversationPage.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appECC_Based_Ecrypted_Communicating_System PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appECC_Based_Ecrypted_Communicating_System
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appECC_Based_Ecrypted_Communicating_System
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appECC_Based_Ecrypted_Communicating_System
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
