import mongoose from 'mongoose';

export const UserSchema = new mongoose.Schema({


    date: {
        type: Date,
        default: Date.now
    },
    password: {
        type: String,
        required: true,
    },

    firstName: {
        type: String,
        required: true,
    },
    lastName: {
        type: String,
        required: true,
    },
    email: {
        unique: true,
        type: String,
        required: true,
    },

    profileImage: {
        type: String,

    },


});

// export const User = mongoose.model('Event', UserSchema);
