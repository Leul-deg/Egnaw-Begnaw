import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { CreateReviewDTO } from 'src/review/dtos/createReview.dto';
import { UpdateReviewDTO } from 'src/review/dtos/updateReview.dto';
import { ReviewI } from 'src/review/interfaces/review.interface';

@Injectable()
export class ReviewService {
    constructor(@InjectModel('Review') private reviewModel: Model<CreateReviewDTO>) { }

    async createReview(Review: CreateReviewDTO): Promise<ReviewI> {
        try {
            const newReview = await this.reviewModel.create(Review);
            const result = newReview.save();
            return newReview;
        } catch (error) {
            throw error;
        }
    }

    async getAllReviews(): Promise<ReviewI[]> {
        try {
            const newReview = await this.reviewModel.find()
                .sort({ updatedAt: -1 })
                .exec();

            return newReview;
        } catch (error) {
            throw error;
        }
    }

    async getReviewByEventId(id: string): Promise<ReviewI[]> {
        try {
            const newReview = await this.reviewModel.find({ eventId: id })
                .sort({ updatedAt: -1 })
                .exec();
            return newReview;
        } catch (error) {
            throw error;
        }
    }

    async getReviewById(id: string): Promise<ReviewI> {
        try {
            const newReview = await this.reviewModel.findOne({ _id: id });
            return newReview;
        } catch (error) {
            throw error;
        }
    }

    async updateReview(id: String, Review: UpdateReviewDTO): Promise<ReviewI> {
        try {
            const newReview = await this.reviewModel.findOneAndUpdate({ _id: id }, Review);
            return newReview;
        } catch (error) {
            throw error;
        }
    }

    async deleteReview(id: String): Promise<ReviewI> {
        try {
            const newReview = await this.reviewModel.findOneAndDelete({ _id: id });
            return newReview;
        } catch (error) {
            throw error;
        }
    }
}
