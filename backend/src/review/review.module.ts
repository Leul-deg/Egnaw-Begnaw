import { Module } from '@nestjs/common';
import { ReviewController } from './controllers/review/review/review.controller';
import { ReviewController } from './controllers/review/review.controller';
import { ReviewService } from './services/review/review.service';

@Module({
  controllers: [ReviewController],
  providers: [ReviewService]
})
export class ReviewModule {}
