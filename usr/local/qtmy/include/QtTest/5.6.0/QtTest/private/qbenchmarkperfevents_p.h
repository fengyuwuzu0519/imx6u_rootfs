/****************************************************************************
**
** Copyright (C) 2013 Intel Corporation.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the QtCore module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL21$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 or version 3 as published by the Free
** Software Foundation and appearing in the file LICENSE.LGPLv21 and
** LICENSE.LGPLv3 included in the packaging of this file. Please review the
** following information to ensure the GNU Lesser General Public License
** requirements will be met: https://www.gnu.org/licenses/lgpl.html and
** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** As a special exception, The Qt Company gives you certain additional
** rights. These rights are described in The Qt Company LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** $QT_END_LICENSE$
**
****************************************************************************/

#ifndef QBENCHMARKPERFEVENTS_P_H
#define QBENCHMARKPERFEVENTS_P_H

//
//  W A R N I N G
//  -------------
//
// This file is not part of the Qt API.  It exists purely as an
// implementation detail.  This header file may change from version to
// version without notice, or even be removed.
//
// We mean it.
//

#include <QtTest/private/qbenchmarkmeasurement_p.h>

QT_BEGIN_NAMESPACE

class QBenchmarkPerfEventsMeasurer : public QBenchmarkMeasurerBase
{
public:
    QBenchmarkPerfEventsMeasurer();
    ~QBenchmarkPerfEventsMeasurer();
    virtual void init() Q_DECL_OVERRIDE;
    virtual void start() Q_DECL_OVERRIDE;
    virtual qint64 checkpoint() Q_DECL_OVERRIDE;
    virtual qint64 stop() Q_DECL_OVERRIDE;
    virtual bool isMeasurementAccepted(qint64 measurement) Q_DECL_OVERRIDE;
    virtual int adjustIterationCount(int suggestion) Q_DECL_OVERRIDE;
    virtual int adjustMedianCount(int suggestion) Q_DECL_OVERRIDE;
    virtual bool repeatCount() Q_DECL_OVERRIDE { return 1; }
    virtual bool needsWarmupIteration() Q_DECL_OVERRIDE { return true; }
    virtual QTest::QBenchmarkMetric metricType() Q_DECL_OVERRIDE;

    static bool isAvailable();
    static QTest::QBenchmarkMetric metricForEvent(quint32 type, quint64 event_id);
    static void setCounter(const char *name);
    static void listCounters();
private:
    int fd;

    qint64 readValue();
};

QT_END_NAMESPACE

#endif // QBENCHMARKPERFEVENTS_P_H
