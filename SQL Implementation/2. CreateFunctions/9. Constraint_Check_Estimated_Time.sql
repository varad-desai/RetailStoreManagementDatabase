/*
This function checks whether difference between start_time and end_time of delivery is less than estimated_time

It will return 1 if it is else it will return 0
*/

USE [RetailStoreManagement_Team10]
GO
CREATE FUNCTION [dbo].[Constraint_Check_Estimated_Time]
(@estimated_time datetime, @delivery_id int)
Returns INT
AS
BEGIN
DECLARE @start_time datetime;
DECLARE @end_time datetime;
DECLARE @time datetime;
DECLARE @check int;
 
SET @start_time=(select CAST(start_time as datetime) from delivery where delivery_id=@delivery_id);


SET @end_time=(select CAST(end_time as datetime) from delivery where delivery_id=@delivery_id);

SET @time= DATEDIFF(MINUTE,@start_time,@end_time);
-- DECLARE @estimated_time_float time;   
--SET @estimated_time_float=cast(@estimated_time as float) - floor(cast(@estimated_time as float))

     IF(@time< DATEPART(MINUTE, @estimated_time))
	 BEGIN
	    SET @check=1;
	 END
	else
	 BEGIN
	    SET @check=0;
     END
Return @check;
END;