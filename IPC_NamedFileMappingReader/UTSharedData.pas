unit UTSharedData;

interface

const
  MAX_DATA_LEGNTH = 255;

type
  TSharedData = record
    Data: array [0 .. MAX_DATA_LEGNTH] of Char;
  end;

implementation

end.
