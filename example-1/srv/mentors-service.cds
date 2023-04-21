using ecenta.ims as ims from '../db/schema';

service MentorsService {
    entity Interns   as projection on ims.Interns;
    entity Mentors   as projection on ims.Mentors;
    entity Practices as projection on ims.Practices;
}
