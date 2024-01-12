#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include <QMessageBox>
#include <QString>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::showAboutWindow()
{
    QString title = "About ECC Based Ecrypted Communicating System";
    QString text = "This is a winter holiday project made by Miter and Tony, it is a chat system encrypted with ECC. \nGithub repo: https://github.com/139167/ECC-Based-Ecrypted-Communicating-System";
    QMessageBox::about(centralWidget(), title, text);
}

void MainWindow::showAboutQtWindow()
{
    QMessageBox::aboutQt(centralWidget(), QString("About Qt"));
}
