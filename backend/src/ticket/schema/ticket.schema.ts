import mongoose from 'mongoose';


export const TicketSchema = new mongoose.Schema({
    userId: {
        type: String,
        ref: 'User',
        required: true
    },

    eventId: {
        type: String,
        ref:"Event",
        required: true,
    }
})

export const Ticket = mongoose.model('Ticket', TicketSchema);
