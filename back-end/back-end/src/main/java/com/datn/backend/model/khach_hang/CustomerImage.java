package com.datn.backend.model.khach_hang;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "khach_hang_image")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class CustomerImage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String imageName;
    private String imageUrl;
    private String imageId;

    public CustomerImage(String imageName, String imageUrl, String imageId) {
        this.imageName = imageName;
        this.imageUrl = imageUrl;
        this.imageId = imageId;
    }

    @Override
    public String toString() {
        return "KhachHangImage{" +
                "id=" + id +
                ", imageName='" + imageName + '\'' +
                ", imageUrl='" + imageUrl + '\'' +
                ", imageId='" + imageId + '\'' +
                '}';
    }
}
