// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.Project1;

using Microsoft.Sales.Customer;

pageextension 50102 CustomerListExt extends "Customer List"
{
    layout{
        modify("No."){
            Visible=false;
        }
        addafter("No."){
            field(Fidelite;Rec.Fidelite){
                ApplicationArea = all;
            }
        }
    }
    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;
}