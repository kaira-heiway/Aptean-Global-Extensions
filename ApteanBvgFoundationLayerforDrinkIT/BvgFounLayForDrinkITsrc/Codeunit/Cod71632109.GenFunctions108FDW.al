codeunit 71632109 GenFunctions108FDW
{
    Subtype = Normal;
    // procedure AssignFEFOTracking(var WarehouseShipmentLine: Record "Warehouse Shipment Line")
    // begin

    // end;
    procedure AssignFEFOTracking(var SalesLine2: Record "Sales Line")
    begin
        SalesLine2.Reset();
    end;

    procedure AssignFEFOTracking(var WarehouseShipmentLine: Record "Warehouse Shipment Line")
    begin
        WarehouseShipmentLine.Reset();
    end;
}