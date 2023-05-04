import mongoose from 'mongoose';

export const ReviewSchema = new mongoose.Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
        required: true,
        ref: 'User'
    },

    organizerId: {
        type: mongoose.Schema.Types.ObjectId,
        required: true,
        ref: 'Organizer'
    },

    reviewText: {
        type: String,
        required: true
    }
})

export const Review = mongoose.model('Review', ReviewSchema);