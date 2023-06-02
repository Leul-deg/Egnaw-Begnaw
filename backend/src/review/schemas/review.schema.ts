import mongoose from 'mongoose';

export const ReviewSchema = new mongoose.Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
        required: true,
        ref: 'User'
    },

    eventId: {
        type: mongoose.Schema.Types.ObjectId,
        required: true,
        ref: 'Event'
    },

    reviewText: {
        type: String,
        required: true
    }
})

export const Review = mongoose.model('Review', ReviewSchema);