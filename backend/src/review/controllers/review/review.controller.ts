import { Controller, Post, Get, Body, Param, Delete, UseGuards } from '@nestjs/common';
import { JwtGuard } from 'src/auth/guard';
import { CreateReviewDTO } from 'src/review/dtos/createReview.dto';
import { UpdateReviewDTO } from 'src/review/dtos/updateReview.dto';
import { ReviewI } from 'src/review/interfaces/review.interface';
import { ReviewService } from 'src/review/services/review/review.service';

@UseGuards(JwtGuard)
@Controller()
export class ReviewController {
    
    constructor(private reviewService: ReviewService) {}

    @Post()
    async createReview(@Body() Review: CreateReviewDTO): Promise<ReviewI> {

        return this.reviewService.createReview(Review);
    }

    @Get()
    async getAllReviews(): Promise<ReviewI[]> {
        return this.reviewService.getAllReviews();
    }

    @Get('/:id')
    async getReviewById(@Param('id') id: string) {
        return this.reviewService.getReviewById(id);
    }

    // get review by eventId
    @Get('event/:id')
    async getReviewByEventId(@Param('id') id: string) {
        return this.reviewService.getReviewByEventId(id);
    }
    

    @Get('update/:id')
    async updateReview(@Param('id') id: string, @Body() Review: UpdateReviewDTO): Promise<ReviewI> {
        return this.reviewService.updateReview(id, Review);
    }

    @Delete('delete/:id')
    async deleteReview(@Param('id') id: string): Promise<ReviewI> {
        return this.reviewService.deleteReview(id);
    }

}
