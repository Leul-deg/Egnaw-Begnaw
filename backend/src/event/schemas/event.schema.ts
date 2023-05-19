import mongoose from 'mongoose';


export const EventSchema = new mongoose.Schema({
    organizerId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Organizer',
        required: true
    },

    startTime: {
        type: Date,
        required: true,
    },

    endTime: {
        type: Date,
        required: true,
    },

    place: {
        type: String,
        required: true,
    },

    availableSeats: {
        type: Number,
        required: true,
    },

    ticketsSold: {
        type: Number,
        required: true,
    }
})

export const Event = mongoose.model('Event', EventSchema);
