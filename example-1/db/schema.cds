namespace ecenta.ims;

using {managed} from '@sap/cds/common';

entity Mentors : managed {
    key ID       : Integer;
        name     : String;
        practice : Association to Practices;
        interns  : Association to many Interns
                       on interns.mentor = $self;
}

entity Interns : managed {
    key ID       : Integer;
        name     : String;
        practice : Association to Practices;
        mentor   : Association to Mentors;
}

entity Practices : managed {
    key ID   : Integer;
        name : String;
}
