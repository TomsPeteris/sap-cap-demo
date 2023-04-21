using from '../../srv/mentors-service';

annotate MentorsService.Mentors with @(UI: {
    SelectionFields: [
        ID,
        name,
        practice.name
    ],
    LineItem       : [
        {Value: ID},
        {Value: name},
        {Value: practice.name}
    ],
    HeaderInfo     : {
        TypeName      : '{i18n>Mentor}',
        TypeNamePlural: '{i18n>Mentors}',
        Title         : {Value: name},
        Description   : {Value: ID}
    },
});

annotate MentorsService.Interns with {
    ID     @title: '{i18n>ID}'  @UI.HiddenFilter;
    name   @title: '{i18n>Name}';
    mentor @title: '{i18n>Mentor}';
};

annotate MentorsService.Mentors with {
    ID   @title: '{i18n>ID}'  @UI.HiddenFilter;
    name @title: '{i18n>MentorName}';
};

annotate MentorsService.Practices with {
    ID   @title: '{i18n>ID}'  @UI.HiddenFilter;
    name @title: '{i18n>PracticeName}';
};
