using ecenta.ims as ims from '../db/schema';

service IMSService {
    entity Mentors as projection on ims.Mentors;
    entity Interns as projection on ims.Interns;
}
