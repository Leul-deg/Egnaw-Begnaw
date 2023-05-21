import { Module } from '@nestjs/common';
import { ReviewController } from './controllers/review/review.controller';
import { ReviewService } from './services/review/review.service';
import { MongooseModule } from '@nestjs/mongoose';
import { ReviewSchema } from './schemas/review.schema';


@Module({
  imports: [MongooseModule.forFeature([{ name: 'Review', schema: ReviewSchema }])],
  controllers: [ReviewController],
  providers: [ReviewService]
})
export class ReviewModule {}
