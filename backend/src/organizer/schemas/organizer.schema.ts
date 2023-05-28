import mongoose from 'mongoose';

export const OrganizerSchema = new mongoose.Schema({
    organizationName: {
        type: String,
        required: true,
    },
    password: {
        type: String,
        required: true,
    },
    email: {
        type: String,
        required: true,
        unique: true,
        match: /^[^\s@]+@[^\s@]+\.[^\s@]+$/,
    },
    profileImage: {
        type: String
        
},
});

export const Organizer = mongoose.model('Organizer', OrganizerSchema);