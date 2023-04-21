using from '../../srv/interns-service';

annotate InternsService.Interns with @(UI: {
    SelectionFields: [
        ID,
        name,
        practice.name,
        mentor.name
    ],
    LineItem       : [
        {Value: ID},
        {Value: name},
        {Value: practice.name},
        {Value: mentor.name},
    ],
    HeaderInfo     : {
        TypeName      : '{i18n>Intern}',
        TypeNamePlural: '{i18n>Interns}',
        Title         : {Value: name},
        Description   : {Value: ID}
    },
});

annotate InternsService.Interns with {
    ID     @title: '{i18n>ID}'  @UI.HiddenFilter;
    name   @title: '{i18n>Name}';
    mentor @title: '{i18n>Mentor}';
};

annotate InternsService.Mentors with {
    ID   @title: '{i18n>ID}'  @UI.HiddenFilter;
    name @title: '{i18n>MentorName}';
};

annotate InternsService.Practices with {
    ID   @title: '{i18n>ID}'  @UI.HiddenFilter;
    name @title: '{i18n>PracticeName}';
};
