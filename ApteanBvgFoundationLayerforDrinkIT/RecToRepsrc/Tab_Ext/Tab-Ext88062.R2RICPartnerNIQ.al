tableextension 88062 "R2R IC Partner NIQ" extends "IC Partner" //413
{
    fields
    {
        field(88000; "R2R Date Filter NIQ"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(88001; "R2R Global Dim 1 Filter NIQ"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            CaptionClass = '1,3,1';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(1));
        }
        field(88002; "R2R Global Dim 2 Filter NIQ"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            CaptionClass = '1,3,2';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code where("Global Dimension No." = const(2));
        }
        field(88003; "R2R Currency Filter NIQ"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(88004; "R2R Vend. Post. Gr. Filter NIQ"; Code[20])
        {
            Caption = 'Vendor Posting Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "Vendor Posting Group";
        }
        field(88005; "R2R Cust. Post. Gr. Filter NIQ"; Code[20])
        {
            Caption = 'Customer Posting Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "Customer Posting Group";
        }
        field(88006; "R2R Add. Rep. Customer No. NIQ"; Code[20])
        {
            Caption = 'Add. Rep. Customer No.';
            TableRelation = Customer;
        }
        field(88007; "R2R Add. Rep. Vendor No. NIQ"; Code[20])
        {
            Caption = 'Add. Rep. Vendor No.';
            TableRelation = Vendor;
        }
        field(88008; "R2R CustBalanceAtDate(LCY) NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("Customer No."),
            //                                                                      "Initial Entry Global Dim. 1" = field("R2R Global Dim 1 Filter NIQ"),
            //                                                                      "Initial Entry Global Dim. 2" = field("R2R Global Dim 2 Filter NIQ"),
            //                                                                      "Currency Code" = field("R2R Currency Filter NIQ"),
            //                                                                      "Posting Date" = field("R2R Date Filter NIQ"),
            //                                                                      "Customer Posting Group 101FDW" = field("R2R Cust. Post. Gr. Filter NIQ")));
            Caption = 'Customer Balance at Date (LCY)';
            Editable = false;
           // FieldClass = FlowField;
        }
        field(88009; "R2R VendBalanceAtDate(LCY) NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" where("Vendor No." = field("Vendor No."),
            //                                                                      "Initial Entry Global Dim. 1" = field("R2R Global Dim 1 Filter NIQ"),
            //                                                                      "Initial Entry Global Dim. 2" = field("R2R Global Dim 2 Filter NIQ"),
            //                                                                      "Currency Code" = field("R2R Currency Filter NIQ"),
            //                                                                      "Posting Date" = field("R2R Date Filter NIQ"),
            //                                                                      "Vendor Posting Group 101FDW" = field("R2R Vend. Post. Gr. Filter NIQ")));
            Caption = 'Vendor Balance at Date (LCY)';
            Editable = false;
           // FieldClass = FlowField;
        }
        field(88010; "R2R AddRepCustBalAtDt(LCY) NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("R2R Add. Rep. Customer No. NIQ"),
            //                                                                      "Initial Entry Global Dim. 1" = field("R2R Global Dim 1 Filter NIQ"),
            //                                                                      "Initial Entry Global Dim. 2" = field("R2R Global Dim 2 Filter NIQ"),
            //                                                                      "Currency Code" = field("R2R Currency Filter NIQ"),
            //                                                                      "Posting Date" = field("R2R Date Filter NIQ"),
            //                                                                      "Customer Posting Group 101FDW" = field("R2R Cust. Post. Gr. Filter NIQ")));
            Caption = 'Add. Rep Customer Balance at date (LCY)';
            Editable = false;
           // FieldClass = FlowField;
        }
        field(88011; "R2R AddRepVendBalAtDt(LCY) NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" where("Vendor No." = field("R2R Add. Rep. Vendor No. NIQ"),
            //                                                                      "Initial Entry Global Dim. 1" = field("R2R Global Dim 1 Filter NIQ"),
            //                                                                      "Initial Entry Global Dim. 2" = field("R2R Global Dim 2 Filter NIQ"),
            //                                                                      "Currency Code" = field("R2R Currency Filter NIQ"),
            //                                                                      "Posting Date" = field("R2R Date Filter NIQ"),
            //                                                                      "Vendor Posting Group 101FDW" = field("R2R Vend. Post. Gr. Filter NIQ")));
            Caption = 'Add. Rep. Vendor Balance at date (LCY)';
            Editable = false;
            //FieldClass = FlowField;
        }
        field(88012; "R2R Add. Rep. Cust. No.2 NIQ"; Code[20])
        {
            Caption = 'Add. Rep. Customer No.2';
            TableRelation = Customer;
        }
        field(88013; "R2R AddRepCust2BalAtDtLCY NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Cust. Ledg. Entry"."Amount (LCY)" where("Customer No." = field("R2R Add. Rep. Cust. No.2 NIQ"),
            //                                                                      "Initial Entry Global Dim. 1" = field("R2R Global Dim 1 Filter NIQ"),
            //                                                                      "Initial Entry Global Dim. 2" = field("R2R Global Dim 2 Filter NIQ"),
            //                                                                      "Currency Code" = field("R2R Currency Filter NIQ"),
            //                                                                      "Posting Date" = field("R2R Date Filter NIQ"),
            //                                                                      "Customer Posting Group 101FDW" = field("R2R Cust. Post. Gr. Filter NIQ")));
            Caption = 'Add. Rep Customer2 Balance at date (LCY)';
            Editable = false;
           // FieldClass = FlowField;
        }
        field(88014; "R2R Add. Rep. Vendor No.2 NIQ"; Code[20])
        {
            Caption = 'Add. Rep. Vendor No.2';
            TableRelation = Vendor;
        }
        field(88015; "R2R AddRepVend2BalAtDtLCY NIQ"; Decimal)
        {
            // CalcFormula = sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" where("Vendor No." = field("R2R Add. Rep. Vendor No.2 NIQ"),
            //                                                                      "Initial Entry Global Dim. 1" = field("R2R Global Dim 1 Filter NIQ"),
            //                                                                      "Initial Entry Global Dim. 2" = field("R2R Global Dim 2 Filter NIQ"),
            //                                                                      "Currency Code" = field("R2R Currency Filter NIQ"),
            //                                                                      "Posting Date" = field("R2R Date Filter NIQ"),
            //                                                                      "Vendor Posting Group 101FDW" = field("R2R Vend. Post. Gr. Filter NIQ")));
            Caption = 'Add. Rep. Vendor2 Balance at date (LCY)';
            Editable = false;
            //FieldClass = FlowField;
        }
    }
}