#pragma once
#include <QObject>

class Rsnd : public QObject
{
  Q_OBJECT
 public:
  Rsnd(QObject* ip_parent = Q_NULLPTR);
  Q_INVOKABLE int dhaw(const int i_range);
};
