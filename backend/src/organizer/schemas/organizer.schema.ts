import mongoose from 'mongoose';

export const OrganizerSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true,
        match: /^[^\s@]+@[^\s@]+\.[^\s@]+$/,
    },
    password: {
        type: String,
        required: true,
    },
    email: {
        type: String,
        required: true,
        unique: true,
    }
});

export const Organizer = mongoose.model('Organizer', OrganizerSchema);