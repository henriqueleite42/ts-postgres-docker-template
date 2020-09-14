import {
	Column,
	CreateDateColumn,
	Entity,
	PrimaryGeneratedColumn,
	getRepository,
} from "typeorm";

@Entity()
export class Test {
	@PrimaryGeneratedColumn()
	public readonly id: number;

	@Column()
	public title: string;

	@Column()
	public description: string;

	@Column({
		default: false,
	})
	public finished: boolean;

	@CreateDateColumn()
	public readonly createdAt: Date;

	@CreateDateColumn()
	public updatedAt: Date;
}

export default getRepository(Test);
