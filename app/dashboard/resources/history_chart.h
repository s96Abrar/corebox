#ifndef HISTORYCHART_H
#define HISTORYCHART_H

#include <QWidget>
#include <QtCharts>
#include <QTimer>


namespace Ui {
    class HistoryChart;
}

class HistoryChart : public QWidget
{
    Q_OBJECT

public:
    explicit HistoryChart(const QString &title, const int &seriesCount, QWidget *parent = 0);
    ~HistoryChart();

    QVector<QLineSeries *> getSeriesList() const;

public slots:
    void setYMax(const int &value);
    void setSeriesList(const QVector<QLineSeries *> &value);

private slots:
    void init();
    void on_historyTitle_clicked(bool checked);

private:
    Ui::HistoryChart *ui;

    QString title;
    int yMax;
    int seriesCount;
    QChartView *chartView;
    QChart *chart;
    QVector<QLineSeries *> seriesList;
};

#endif // HISTORYCHART_H
