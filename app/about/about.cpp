/*
CoreBox is combination of some common desktop apps.

CoreBox is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; version 2
of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, see {http://www.gnu.org/licenses/}. */

#include "about.h"
#include "ui_about.h"


about::about(QWidget *parent) : QWidget(parent), ui(new Ui::about)
{
    ui->setupUi(this);
    connect(ui->aboutqt, SIGNAL(clicked()), qApp, SLOT(aboutQt()));
    setStyleSheet(getStylesheetFileContent(":/appStyle/style/About.qss"));
}

about::~about()
{
    delete ui;
}
