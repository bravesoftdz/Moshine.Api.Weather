﻿namespace Moshine.Api.Weather.Models.WeatherUnderground;

uses
  Foundation;

type

  Observation = public class
  private

    method get_WindAsString: String;
    begin

      if(self.WindSpeedGusting > 0) then
      begin
        exit NSString.stringWithFormat('From the %@ at %d Gusting to %d Knots', self.WindDirection, self.WindSpeed, self.WindSpeedGusting);
      end
      else
      begin
        exit NSString.stringWithFormat('From the %@ at %d Knots', self.WindDirection,self.WindSpeed);
      end;

    end;

    method get_ShortWindAsString:String;
    begin
      if(self.WindSpeedGusting > 0) then
      begin
        exit NSString.stringWithFormat('%@ %d G %d Kts', self.WindDirection,self.WindSpeed,self.WindSpeedGusting);
      end
      else
      begin
        exit NSString.stringWithFormat('%@ %d Kts', self.WindDirection,self.WindSpeed);
      end;
    end;

  public
    property Weather:String;
    property Temperature:Integer;
    property WindDirection:String;
    property WindDegress:Integer;
    property WindSpeed:Integer;
    property WindSpeedGusting:Integer;

    property WindAsString:String read get_WindAsString;
    property ShortWindAsString:String read get_ShortWindAsString;

    constructor;
    begin
      self.Weather := '';
      self.WindDirection := '';

    end;

  end;

end.